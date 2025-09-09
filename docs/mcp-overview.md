# MCP Overview

The Model Context Protocol (MCP) server exposes each documentation and code file as a key-value pair, where the key is the filename and the value is the file's content. This design allows tools and agents to access, update, or analyze any file directly and programmatically.

## Key Benefits for MCP Usage

- **File-as-Value Access**: Each file can be retrieved independently by its filename key
- **Self-Contained Content**: Files are written to be understandable without external navigation
- **Structured Organization**: The SUMMARY.md provides a complete map of all available files
- **Tool Integration**: The `cr-mcp` command provides 27 specialized tools for working with Calcit code

## File Organization

The documentation follows a hierarchical structure that maps directly to file paths:

- **Root files**: `intro.md`, `installation.md`, `run.md`, `data.md`, `features.md`, etc.
- **Subdirectory files**: `intro/overview.md`, `run/bundle-mode.md`, `features/macros.md`, etc.
- **Special files**: `SUMMARY.md` (navigation map), `mcp-tools.md` (tool list)

## MCP Tool Integration

The `cr-mcp` server provides tools specifically designed for the key-value model:

- `list_guidebook_docs`: Get all available documentation files
- `query_guidebook`: Search across documentation content
- `parse_cirru_to_json` / `format_json_to_cirru`: Convert between formats
- File-specific tools for reading and updating Calcit code structures

For the complete list of available tools and their usage, see [MCP Tools](mcp-tools.md).
