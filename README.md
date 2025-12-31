# dotfiles

My personal dotfiles, used for my _Arch Linux_ installation. Works with other Linux distros, but works best with Arch.

### Usage

Install all of the dependencies listed in the files in the `dependencies` directory, and then symlink the following files and directories to the following paths:

* `$HOME`
  - `.bashrc`
  - `.bash_profile`
  - `.profile`
* `$HOME/Scripts`
  - Everything in the `scripts` directory
* `$XDG_CONFIG_HOME`
  - Everything in the `config` directory
