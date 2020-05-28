# Dotfiles

## Vim

To install plugins open vim and run command `:PlugInstall`

## Linking files and directories
I don't set hard/soft links enough that I always forget what the command is. Use hard link to link to a file, and soft link to a directory. For my memory sake:

#### Hard Link
```
$ ln ~/.zshrc ~/projects/dotfiles/zsh
```

#### Soft (Symbolic) Link
```
$ ln -s ~/.vscode ~/projects/dotfiles/vscode
```

