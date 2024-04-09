# AstroNvim Template

**NOTE:** This is for AstroNvim v4+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

```sh
brew install --HEAD neovim
npm install tree-sitter-cli
```

### Config specific installations

```sh
brew install ripgrep jesseduffield/lazygit/lazygit gdu bottom
micromamba install conda-forge::pynvim jupyter_client
```

### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Clone the repository

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```

### Start Neovim

```shell
nvim
:checkhealth
```
