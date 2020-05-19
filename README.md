# AnyBar Bash: Control AnyBar from a Bash shell inside a Vagrant host machine

This project contains helpers for controlling AnyBar from a bash shell

## Usage

Monitor a long running command (orange whilst running, green or red if successful)

```sh
m <some_command>
```

## Installation

Clone this repo

```sh
https://github.com/o-shabashov/anybar-bash.git
```

Add to .bashrc

```sh
source <wherever_you_cloned>/anybar-bash/init.sh
alias m=anybar_monitor
```
