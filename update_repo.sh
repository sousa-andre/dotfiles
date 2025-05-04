cp -R ~/.zshscripts ./.zshscripts
cp ~/.zshrc ./.zshrc
git status

read -e -p "Commit message: " commit_msg;
git add .
git commit -m "$commit_msg"

