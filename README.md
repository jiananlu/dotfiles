### What?

Dotfiles (.vimrc, .zshrc, .tmux.conf, etc) version controlled for portability between machines.

### How?

To use this setups for vim, clone this repo to your local `$HOME` folder and run the make command

```bash
git clone https://github.com/jiananlu/dotfiles.git ${HOME}/dotfiles
# install all dotfiles
make all
# or install one of the dotfiles
make zsh
make vim
make tmux
```

If you have done this before and want start over, clean first before retry

```bash
# first backup your dotfiles
make clean
make
```

### Credits

Most of the stuffs are inspired by others/coworkers/etc, credit goes to them :)

Some useful resources on vim:

* http://dougblack.io/words/a-good-vimrc.html
