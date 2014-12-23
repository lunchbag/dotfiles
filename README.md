## Installation

### Using Git and the bootstrap script

Clone the repository into `~/.dotfiles`. The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/jstarry/dotfiles.git .dotfiles
```

To run/update:

```bash
cd ~/.dotfiles && source bootstrap.sh
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

You should use `~/.extra` to override settings, functions and aliases

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course):

```bash
brew bundle ~/.brewfile
```
