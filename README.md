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

## 2. 設定を保存する手順 (変更を加えた PC A で実行)

設定を変更して「これを GitHub に保存したい」と思った時に実行します。

```bash
# 1. 本来の場所にある最新設定を dotfiles フォルダへ集める
cp -r ~/.config/nvim ~/dotfiles/
cp ~/.tmux.conf ~/dotfiles/

# 2. GitHub へ送信
cd ~/dotfiles
git add .
git commit -m "Update config: $(date +'%Y-%m-%d %H:%M:%S')"
git push origin main

# 1. GitHub から最新の状態をダウンロード
cd ~/dotfiles
git pull origin main

# 2. 現在の PC の設定を最新版で上書き
# (既存の設定を一度削除してからコピーします)
rm -rf ~/.config/nvim
cp -r ~/dotfiles/nvim ~/.config/
cp ~/dotfiles/.tmux.conf ~/
