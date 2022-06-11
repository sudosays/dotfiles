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
