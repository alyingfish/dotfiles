# Lying Fish's dotfiles

使用 [chezmoi](https://www.chezmoi.io/) 管理配置文件。

依赖：

```bash
sudo pacman -S paru chezmoi
paru -S fish kitty starship btop zoxide eza yazi wl-clipboard
paru -S firefox chromium google-chrome
```
```
```

## 输入法

```bash
paru -S fcitx5-im fcitx5-chinese-addons fcitx5-configtool fcitx5-rime
paru -S rime-ice
paru -S fcitx5-skin-fluentdark-git fcitx5-skin-fluentlight-git
```

## 字体

采用类苹果字体方案：

- 中文字体：苹方字体
- 英文字体：Inter
- 等宽字体：Maple Mono NF CN
- emoji：apple color emoji

详细见 <https://github.com/wxmup/linux-fonts-from-apple?tab=readme-ov-file#readme>

maple 字体 Github releases: <https://github.com/subframe7536/maple-font/releases>


```bash
sudo pacman -S inter-font ttf-nerd-fonts-symbols-mono 
paru -S otf-apple-pingfang ttf-apple-emoji ttf-maplemono-cn-unhinted
```

## rgb
```bash
paru -S openrgb
```


## editor
```bash
paru -S visual-studio-code-bin
paru -S neovim git lazygit tree-sitter-cli gcc curl fzf ripgrep fd kitty
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

