# dotvim

Personal Vim development environment for the machines I work on - requires Vim 8.1+ with python3 support.

Plugins: NERDTree, Python-mode, gruvbox.

By default, Python-mode is configured for python3.
For color scheme, ensure terminal specific support.

Clone this repo into ``` ~/.vim ``` :
```
git clone https://github.com/KyleAcheson/dotvim.git .
```

Get plugins: 
```
git submodule update --init --recursive
```

May need to install Ctags (optional):

Linux - ```sudo apt install ctags```.

MacOS - ```brew install ctags```.

By default, tag files are generated each time you write to file (.py only).

If plugins will not load check path -  ```:set rtp``` and ```:scriptnames```. 

Run ```:helptags ALL``` to generate tags for help docs.
