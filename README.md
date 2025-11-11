# Neovim Config Manual
This README is my personal manual. 

## Table of Contents
1. [Keymaps](#keymaps)
2. [Neotree](#-neotree)
3. [Telescope](#-telescope)
4. [Lualine](#-lualine)
5. [Autocompletion (Lua)](#-autocompletion-lua)
6. [To-Do](#-to-do)

## Keymaps
| Mode | Key | Action | Notes | Plugin |
|------|-----|--------|--------|--------|
| Normal | `<C-s>` | Save file | Common muscle memory | Built-in |
| Normal | `<leader>sn` | Save without formatting | Skips LSP/formatter hooks | Built-in |
| Normal | `<C-q>` | Quit Neovim | Quick exit | Built-in |
| Normal | `<C-d>` / `<C-u>` | Scroll down/up and center | Keeps context visible | Built-in |
| Normal | `n` / `N` | Jump to next/previous search result and center | Keeps matches in view | Built-in |
| Normal | `<leader>lw` | Toggle line wrapping | Quick wrap toggle | Built-in |
| Normal | `<Up>` / `<Down>` | Resize split vertically | Adjust height | Built-in |
| Normal | `<Left>` / `<Right>` | Resize split horizontally | Adjust width | Built-in |
| Normal | `<leader>v` | Split window vertically | Side-by-side editing | Built-in |
| Normal | `<leader>h` | Split window horizontally | Top-bottom editing | Built-in |
| Normal | `<leader>se` | Equalize split sizes | Balance all windows | Built-in |
| Normal | `<leader>xs` | Close current split | Clean up workspace | Built-in |
| Normal | `<C-h/j/k/l>` | Navigate between splits | Move focus easily | Built-in |
| Normal | `<Tab>` / `<S-Tab>` | Next / Previous buffer | Smooth buffer switching | Built-in |
| Normal | `<leader>X` | Close buffer | Force close buffer | Built-in |
| Normal | `<leader>b` | New buffer | Open blank buffer | Built-in |
| Normal | `<leader>to` | Open new tab | Multi-project editing | Built-in |
| Normal | `<leader>tx` | Close current tab | Close active tab | Built-in |
| Normal | `<leader>tn` / `<leader>tp` | Next / Previous tab | Switch tabs quickly | Built-in |
| Normal | `x` | Delete without yanking | Prevents clipboard overwrite | Built-in |
| Visual | `<` / `>` | Indent and stay in selection | Better block editing | Built-in |
| Visual | `p` | Paste without losing yank | Keeps last copied text | Built-in |
| Normal | `<leader>y` / `<leader>p` | Yank/Paste to system clipboard | OS clipboard integration | Built-in |
| Normal | `<C-a>` | Select all | Global text selection | Built-in |
| Normal | `<leader>m` | Open Mason | Manage LSP/DAP tools | Mason |
