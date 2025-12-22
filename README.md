# dotfiles

Neovim と tmux の設定管理リポジトリです。家と職場の環境を同期するために使用します。

## 1. 初回セットアップ (新しいPCで使う時)

リポジトリをクローンし、既存の設定をバックアップしてからコピーします。

```bash
# クローン
git clone [https://github.com/yupimantarou/dotfiles.git](https://github.com/yupimantarou/dotfiles.git) ~/dotfiles

# 既存設定のバックアップ（念のため）
mv ~/.config/nvim ~/.config/nvim_backup
mv ~/.tmux.conf ~/.tmux.conf_backup

# 反映（コピー）
mkdir -p ~/.config
cp -r ~/dotfiles/nvim ~/.config/
cp ~/dotfiles/.tmux.conf ~/
