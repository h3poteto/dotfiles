# dotfiles
My dotfiles.

## Install

```
$ cd
$ git clone git@github.com:h3poteto/dotfiles.git
```

### X Window
```
$ ln -s ~/dotfiles/.Xresources ~/.Xresources
$ xrdb .Xresources
```

### i3
```
$ ln -s ~/dotfiles/.config/i3 ~/.config/i3
```

### polybar
```
$ ln -s ~/dotfiles/.config/polybar ~/.config/polybar
```

### deadd-notification-center
```
$ ln -s ~/dotfiles/.config/deadd ~/.config/deadd
```

### picom
```
$ ln -s ~/dotfiles/.config/picom ~/.config/picom
```

### powerline
```
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



## Dependencies
- i3
- i3lock-fancy
- polybar
- deadd-notification-center
- picom
- pulseaudio
- ulauncher
- maim
- powerline

```
$ yay -S i3 i3lock-fancy polybar deadd-notification-center picom pulseaudio ulauncher maim
```

```
$ pip install powerline-status
```

