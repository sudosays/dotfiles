How to use these files.

I manage my dotfiles using [GNU Stow](https://www.gnu.org/software/stow/).

The folders are setup to assume that this dir is located in the home directory.

As such calling `stow` on any folder will deploy the dotfiles into the home directory.

However this can also be changed with the argument `-t <dir>`. This is required
when the dofiles folder is not sitting directly under the home directory.

## Future features

+ [ ] Recipes for programs to install
+ [ ] Branched configs for multiple setups
+ [ ] MultiOS setups

## How should .xprofile, .xsession, and .xinitrc be used?

In my case I use `.xprofile` for environment setup persistent to X-sessions, and
`.xsession` to run background processes for the WM.

For other WMs it might make sense to have special files for `.xprofile`,
`.xsession`, etc. Those would go in the directory of the WM being riced and
stow'd with it.

## Picking Names with namelists

The `namelists/` folder contains files that can be used for picking hostnames and the like.

Setting a random hostname:

``` sh
shuf -n 1 namelists/arch-hostnames.txt > /etc/hostname
```
