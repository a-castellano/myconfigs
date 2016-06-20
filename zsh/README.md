Zsh SetUp
========

# Information
How to setup my Zsh configuration.

# Steps to set it up

## Step 1. Install packages
```bash
yaourt -S zsh 
```

## Step 2. Install Oh-my-zsh via curl
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Step 3. Link acastellano zsh theme
```bash
ln -s ~/workspace/myconfigs/zsh/acastellano.zsh-theme ~/.oh-my-zsh/themes
```

## Step 4. Linking config folders
```bash
rm ~/.zshrc
ln -s ~/workspace/myconfigs/zsh/.zshrc ~/.zshrc
```
