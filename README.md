# dotfiles

```bash
git clone https://github.com/kevinpita/dotfiles ~/.dotfiles
cd ~/.dotfiles
for dir in */; do stow --adopt "$dir"; done
git reset --hard HEAD
```
