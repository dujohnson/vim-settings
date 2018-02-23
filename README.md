# vim-settings
My vim settings


## Installation Instructions



Clone the vim-settings repo

```Shell
git clone https://github.com/dujohnson/vim-settings.git
```

Move into the root directory 

```Shell
cd vim-settings
```

Copy the file to your home directory. Change it to a hidden file. 
```Shell
cp vimrc $HOME/.vimrc
```

Copy the `vim` directory `~/.vim`
```Shell
mkdir -p ~/.vim
cp -R vim/* ~/.vim
```

Install Pathogen
```Shell
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
  
