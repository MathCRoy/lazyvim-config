# Neovim Config

Personal LazyVim configuration.

## Custom Keybindings

### Navigation
| Key | Action |
|-----|--------|
| `Ctrl+l` | Cycle between splits |
| `Ctrl+Shift+L` | Create vertical split |
| `Shift+Left/Right` | Switch buffers |
| `Ctrl+Esc` | Close all panels (DB UI, explorer, etc.) |

### Editing
| Key | Action |
|-----|--------|
| `jk` / `kj` | Escape (insert/visual mode) |
| `Ctrl+/` | Toggle comment |
| `<leader>rw` | Replace word without yanking |
| `<leader>o` / `O` | Add empty line below/above |
| `p` (visual) | Paste without overwriting register |

### Search & Files
| Key | Action |
|-----|--------|
| `<space><space>` | Search in files (grep) |
| `<space>ff` | Find files |
| `<space>e` | Toggle file explorer |
| `<space>,` | Buffer picker |
| `Ctrl+Alt+C` | Copy current file path |

### Tools
| Key | Action |
|-----|--------|
| `Alt+F12` | Toggle floating terminal |
| `<leader>db` | Toggle database UI |
| `<leader>da` | Add database connection |
| `<leader>ut` | Toggle undo tree |

### Splits & Buffers
| Key | Action |
|-----|--------|
| `<leader>wm` | Move buffer to other split |
| `<leader>|` | Vertical split (default) |
| `<leader>-` | Horizontal split (default) |

## Language Support

Enabled extras:
- C/C++ (clangd)
- Java (jdtls)

### Setup on a New Machine

```bash
# System packages (Ubuntu/Debian)

# Java & C++
sudo apt install openjdk-21-jdk clangd

# PHP/Laravel
sudo apt install php php-cli composer

# Python
sudo apt install python3 python3-pip python3-venv

# Node.js (for Vue, HTML, CSS tooling)
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install nodejs

# C# (.NET SDK)
sudo apt install dotnet-sdk-8.0
```

In Neovim:
```vim
:MasonInstall jdtls clangd                      " Java, C++
:MasonInstall intelephense                      " PHP/Laravel
:MasonInstall pyright ruff                      " Python
:MasonInstall vue-language-server               " Vue.js
:MasonInstall html-lsp css-lsp tailwindcss-language-server  " HTML/CSS
:MasonInstall omnisharp                         " C#
:MasonInstall sqlls                             " SQL

:LazyExtras  " then enable:
" lang.java, lang.clangd, lang.php, lang.python
" lang.vue, lang.typescript, lang.csharp
```

## Features

- Auto-save on buffer leave / focus lost
- Tab accepts completion
- No animations
- Absolute line numbers
- File explorer opens on startup (if no file specified)

## Database Connections

Format: `dialect://user:password@host:port/database`

Example: `postgresql://postgres:postgres@localhost:5432/postgres`
