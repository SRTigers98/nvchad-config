# NvChad Custom Config

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)

## Installation

Install the NvChad configuration by following their [installation guide](https://nvchad.com/docs/quickstart/install).
Then clone this repository in the _custom_ folder:

```bash
git clone https://github.com/SRTigers98/nvchad-config ~/.config/nvim/lua/custom --depth 1
```

## Required software

To install the required software for LSPs, formatters, linters and plugins, open **nvim** and run the **:MasonInstallAll** command.
Some software may be required for mason to install the required tools.

### Additional software

| Plugin                   | Software                                         |
| ------------------------ | ------------------------------------------------ |
| advanced-git-search.nvim | [ripgrep](https://github.com/BurntSushi/ripgrep) |

## Update

To update the configuration just use the **git pull** command to update the repository.
