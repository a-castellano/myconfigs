Vim SetUp
========

# Information
How I setup my Vim configuration in a Arch Linux.

# Steps to set it up

## Step 1. Install packages
```bash
yaourt -S vim make camake
```

## Step 2. Linking config file
```bash
ln -s ~/workspace/myconfigs/vim/.vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
```

## Step 3. Clone Vundle and install plugins
[https://github.com/VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim)
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

## Step 4. Configure YouCompleteMe
```bash
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
