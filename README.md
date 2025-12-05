# Lying Fish's dotfiles

managed with [chezmoi](https://www.chezmoi.io/).

## Run below cmd to install dependencies:

```bash
sudo pacman -S paru chezmoi
paru -S fish kitty starship btop zoxide eza yazi wl-clipboard
paru -S firefox chromium google-chrome
```
```
```

input method:
```bash
paru -S fcitx5-im fcitx5-chinese-addons fcitx5-configtool fcitx5-rime
paru -S rime-ice
paru -S fcitx5-skin-fluentdark-git fcitx5-skin-fluentlight-git
```

font. check:<https://github.com/wxmup/linux-fonts-from-apple>

```bash
sudo pacman -S inter-font ttf-nerd-fonts-symbols-mono 
paru -S otf-apple-pingfang ttf-apple-emoji ttf-maplemono-cn-unhinted
```


rgb:
```bash
paru -S openrgb
```


editor:
```bash
paru -S visual-studio-code-bin
paru -S neovim git lazygit tree-sitter-cli gcc curl fzf ripgrep fd kitty
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

