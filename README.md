# Lying Fish's dotfiles

使用 [chezmoi](https://www.chezmoi.io/) 管理配置文件。

## 依赖

```bash
sudo pacman -S paru chezmoi
```

### 终端

```bash
paru -S kitty ghostty starship
```

### 命令行工具

```bash
paru -S btop zoxide eza yazi wl-clipboard bat git fzf ripgrep fd 
```

### Shell

```bash
paru -S fish fisher
fisher update # 更新 fish 插件
```

### 浏览器

```bash
paru -S firefox chromium google-chrome zen-browser-bin
```

### Niri

```bash
sudo pacman -Syu niri
```

### 输入法

```bash
paru -S fcitx5-im fcitx5-chinese-addons fcitx5-configtool fcitx5-rime
paru -S rime-ice
paru -S fcitx5-skin-fluentdark-git fcitx5-skin-fluentlight-git
```

### 字体

```bash
sudo pacman -S inter-font ttf-nerd-fonts-symbols-mono 
paru -S otf-apple-pingfang ttf-apple-emoji ttf-maplemono-cn-unhinted ttf-maplemono-nf-cn-unhinted
```

### 光标

```bash
paru -S bibata-cursor-theme-bin
```

### mpvpaper

```bash
sudo pacman -S mpvpaper
```

### editor

```bash
paru -S visual-studio-code-bin neovim
```

### conda

TODO

### 其它应用

```bash
paur -S lx-music-desktop-bin telegram-desktop discord
```
