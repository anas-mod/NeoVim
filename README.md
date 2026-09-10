# NeoVim Configuration

A minimal, focused NeoVim setup for C/C++, Python, and JavaScript/TypeScript development.

## Features

- **Language Support**: LSP integration for C/C++ (clangd), Python (pyright), and JavaScript/TypeScript (Biome)
- **Smart Navigation**: Window navigation with `Ctrl+hjkl` and LSP-powered code navigation (goto definition, references, etc.)
- **Editor Settings**: Relative line numbers, persistent undo, smart indentation, and case-sensitive search
- **Color Scheme**: Greyscale theme for distraction-free coding
- **Space as Leader**: All custom keybindings use Space as the leader key

## Key Keybindings

| Keybind | Action |
| --- | --- |
| `<Space>w` | Save file |
| `<Space>q` | Quit |
| `<Esc>` | Clear search highlight |
| `<C-h/j/k/l>` | Navigate between windows |
| `gd` | Go to definition |
| `K` | Hover documentation |
| `<Space>rn` | Rename symbol |
| `<Space>ca` | Code actions |
| `gr` | Find references |
| `[d` / `]d` | Navigate diagnostics |

## Setup

1. Clone to `~/.config/nvim`
2. Ensure LSP servers are installed: `clangd`, `pyright`, `biome`
3. Start editing!

## Dependencies

- Neovim (recent version with LSP support)
- LSP servers: clangd, pyright, biome

