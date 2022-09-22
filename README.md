# Dotfiles

## Vim

To install plugins open vim and run command `:PlugInstall`

## Neovim

Using NVIM v0.7.2 as of writing this doc. Most of the configuration is done with Lua. Be sure to be on an updated NVIM version to ensure configuration works.

To install plugins open nvim and run command `:PackerInstall`

## Linking files
I don't set hard/soft links enough that I always forget what the command is. Use hard link to link to a file, and soft link to a directory. For my memory sake:

To link a file you can do a hard link:

```
$ ln ~/.config/nvim/init.vim ~/path/to/dotfiles/nvim
```

If you need to hard link to multiple files you can do something like this:
```
$ cd path/to/dotfiles/nvim/lua
$ find ~/.config/nvim/lua "**/*.lua" -exec ln {} \;
```
