# Rust bindings

A demo project can be found at https://github.com/calcit-lang/dylib-workflow

Currently two APIs are supported, based on Cirru EDN data.s

First one is a synchronous [Edn](https://github.com/Cirru/cirru-edn.rs) API with type signature:

```rust
#[no_mangle]
pub fn demo(args: Vec<Edn>) -> Result<Edn, String> {
}
```

The other one is an asynchorous API, it can be called multiple times, which relies on `Arc` type(not sure if we can find a better solution yet),

```rust
#[no_mangle]
pub fn demo(
  args: Vec<Edn>,
  handler: Arc<dyn Fn(Vec<Edn>) -> Result<Edn, String> + Send + Sync + 'static>,
  finish: Box<dyn FnOnce() + Send + Sync + 'static>,
) -> Result<Edn, String> {
}
```

in this snippet, the function `handler` is used as the callback, which could be called multiple times.

The function `finish` is used for indicating that the task has finished. It can be called once, or not being called.
Internally Calcit tracks with a counter to see if all asynchorous tasks are finished.
Process need to keep running when there are tasks running.

Asynchronous tasks are based on threads, which is currently decoupled from core features of Calcit. We may need techniques like `tokio` for better performance in the future, but current solution is quite naive yet.


Also to declare the ABI version, we need another function with specific name so that Calcit could check before actually calling it,

```rust
#[no_mangle]
pub fn abi_version() -> String {
  String::from("0.0.1")
}
```

(This feature is not stable enough yet.)
