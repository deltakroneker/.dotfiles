## Dotfiles
---  
I symlink my dotfiles using [GNU Stow](https://www.gnu.org/software/stow/) with the following command:  
`stow -vt ~ *`  
When adding new dotfiles (that are already existing in their respective directories) to the version control for the first time, use `--adopt` flag to overwrite.
