# Quantum ESPRESSO syntax for Vim

## Installing
```
./install.sh
```

## Syntax Highlighting
![vim-qe syntax demo](https://i.imgur.com/qoRCi8f.png)

## Autocompletion
While typing use `<C-p>` and `<C-n>` to cycle through autocomplete options.  
![vim-qe autocompletion demo](https://i.imgur.com/i5vUone.gif)

### Fix incompatability with YouCompleteMe
Add this line to your `~/.vimrc` to disable YouCompleteMe for the espresso filetype:
```
let g:ycm_filetype_blacklist = { 'espresso': 1 }
```
