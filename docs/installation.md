cargo install calcit

# Installation

To install Calcit, you first need to install Rust. Then, you can install Calcit using Rust's package manager:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

After installing Rust, install Calcit with:

```bash
cargo install calcit
```

Once installed, Calcit is available as a command-line tool. You can test it with:

```bash
calcit calcit.cirru eval 'echo |done'
```

### Commands

Several binaries are included:

- `calcit`: the main command-line tool for running Calcit programs
- `caps`: downloads Calcit packages
- `calcit docs read`: reads the current built-in Calcit documentation

Another important command is `ct`, which is the "Calcit Editor" and is available in a separate repository. For migration and command details, use `calcit docs read upgrade --full`.
