#nstall github.com/incu6us/goimports-reviser/v3@latest .dotfiles
Dotfiles repo based on Dream of Code dotfiles

## Install
Follow the relevant stpes for your distro

### Stow

```
brew install stow
```

### Fonts

The jetbrains one is missing a lot of icons. Use following command instead
https://www.jetbrains.com/lp/mono/

```
brew install font-hack-nerd-font
```

### Fuzzy Finder

```
brew install fzf
```

### Editor

```
brew install nvim
```

### Debugging

Install LLDB. 

For mac this is included in xcode or it can be installed by simply typing lldb into the terminal

### Go packages

```
go install github.com/incu6us/goimports-reviser/v3@latest
go install mvdan.cc/gofumpt@latest
go install github.com/segmentio/golines@latest
```

### Go Debugging

```
go install github.com/go-delve/delve/cmd/dlv@latest
```

### Complete
```
stow . 
```
