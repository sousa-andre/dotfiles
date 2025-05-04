cp -R ~/.zshscripts ./.zshscripts

read -e -p ".zshrc suffix: " zshrc_suffix;
cp ~/.zshrc "./.zshrc$zshrc_suffix"
git status

read -e -p "Commit message: " commit_msg;
git add .
git commit -m "$commit_msg"

