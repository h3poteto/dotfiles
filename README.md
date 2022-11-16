# dotfiles
My dotfiles.

## Install

```
$ cd
$ git clone git@github.com:h3poteto/dotfiles.git
$ cd dotfiles
$ git submodule init
$ git submodule update
```

### X Window
```
$ ln -s ~/dotfiles/.Xresources ~/.Xresources
$ xrdb .Xresources
$ ln -s ~/dotfiles/.xprofile ~/.xprofile
```

### i3
See [i3](.config/i3).

### polybar
See [polybar](.config/polybar).

### deadd-notification-center
```
$ yay -S deadd-notification-center
$ ln -s ~/dotfiles/.config/deadd ~/.config/deadd
```

### picom
```
$ yay -S picom
$ ln -s ~/dotfiles/.config/picom ~/.config/picom
```

### powerline
```
$ pip install powerline-status
$ git clone https://github.com/powerline/fonts.git
$ fonts/install.sh
$ rm -rf fonts
$ ln -s ~/dotfiles/.config/powerline ~/.config/powerline
```

In darwin, please install psutil to get system information.
```
$ pip install psutil
```

### tmux
Read [tmux](./.tmux).

