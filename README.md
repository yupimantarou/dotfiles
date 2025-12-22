# 1. GitHubから自分の設定を持ってくる
git clone https://github.com/yupimantarou/dotfiles.git ~/dotfiles

# 2. 念のため、職場にある既存の設定をバックアップ（名前変更）しておく
mv ~/.config/nvim ~/.config/nvim_backup
mv ~/.tmux.conf ~/.tmux.conf_backup

# 3. 持ってきた設定を「本来の場所」にコピーする
cp -r ~/dotfiles/nvim ~/.config/
cp ~/dotfiles/.tmux.conf ~/
