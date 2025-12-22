# dotfiles

Neovim (`nvim`) と `tmux` の設定を管理・同期するためのリポジトリである。
家と職場の環境を共通化するために使用する。

---

## 1. 初回セットアップ (新しいPCで初めて使う場合)

GitHub から設定を取得し、現在の PC に反映する。

```bash
# リポジトリをホームディレクトリにクローン
git clone [https://github.com/yupimantarou/dotfiles.git](https://github.com/yupimantarou/dotfiles.git) ~/dotfiles

# 既存設定のバックアップ（念のため）
mv ~/.config/nvim ~/.config/nvim_backup
mv ~/.tmux.conf ~/.tmux.conf_backup

# 設定ファイルを反映（コピー）
mkdir -p ~/.config
cp -r ~/dotfiles/nvim ~/.config/
cp ~/dotfiles/.tmux.conf ~/
```

---

## 2. 設定を保存する手順 (変更を加えた側の PC で実行)

設定をいじって「これを GitHub に保存したい」と思った時に実行します。

```bash
# 1. 本来の場所にある最新設定を dotfiles フォルダへ集める
cp -r ~/.config/nvim ~/dotfiles/
cp ~/.tmux.conf ~/dotfiles/

# 2. GitHub へ送信
cd ~/dotfiles
git add .
git commit -m "Update config: $(date +'%Y-%m-%d %H:%M:%S')"
git push origin main
```

---

## 3. 設定を反映する手順 (最新設定を受け取る側の PC で実行)

もう一方の PC で、GitHub にある最新の設定を自分の PC に取り込みたい時に実行します。

```bash
# 1. GitHub から最新の状態をダウンロード
cd ~/dotfiles
git pull origin main

# 2. 現在の PC の設定を最新版で上書き
# (既存の設定を一度削除してからコピーする)
rm -rf ~/.config/nvim
cp -r ~/dotfiles/nvim ~/.config/
cp ~/dotfiles/.tmux.conf ~/
```

---

## 4. (推奨) コピー作業を自動化する (シンボリックリンク)

毎回 `cp` コマンドを打つのが面倒な場合は、以下のコマンドを**一度だけ**実行してください。
`~/dotfiles` 内のファイルを編集するだけで、自動的に PC の設定も更新されるようになります。

```bash
# 既存のファイルを削除してリンク（ショートカット）を作成
rm -rf ~/.config/nvim
rm ~/.tmux.conf

ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
```
