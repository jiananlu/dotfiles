ROOTDIR=${HOME}/dotfiles

all: vim tmux zsh

clean:
	rm -rf ${HOME}/.vim
	rm -rf ${HOME}/.vimrc
	rm -rf ${HOME}/.tmux.conf
	rm -rf ${HOME}/.zshrc

check:
ifeq ($(shell pwd),${ROOTDIR})
else
	$(error Bad location, please clone the git repo to ${ROOTDIR})
endif

setup:
	git submodule update --init --recursive

vim: check setup
	@echo Setting up vim....
	git clone https://github.com/gmarik/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
	ln -s ${ROOTDIR}/vim/.vimrc ${HOME}/.vimrc
	@vim +PluginInstall! +qall

tmux: check setup
	@echo Setting up tmux....
	ln -s ${ROOTDIR}/tmux/.tmux.conf ${HOME}/.tmux.conf

zsh: check setup
	@echo Setting up zsh....
	ln -s ${ROOTDIR}/zsh/.zshrc ${HOME}/.zshrc
