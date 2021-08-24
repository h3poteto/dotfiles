# tmux
You have to setup powerline before tmux, please setup it.

# Prepare
## Linux
- tmux
- xsel
- Meta Key

### Install

```
$ yay -S tmux xsel
```

`xsel` is used to share clipboard between tmux buffer and OS.


### Meta Key
We use Meta key to move pain, but Alt key is recognized as Meta key in normal Japanese keyboards. So please map Win key to Meta key in Xmodmap.

Create `~/.Xmodmap`,

```
keycode <Win Key Code> = Meta_L
```

Please find `<Win Key Code>` using `xev`.

And read this file in `~/.zshrc`.

```bash
xmodmap $HOME/.Xmodmap
```


## MacOS
- tmux
- reattach-to-user-namespace

### Install

```
$ brew install tmux
```


### reattach-to-user-namespace
`reattach-to-user-namespace` is used to share clipboard between tmux buffer and OS.

```
brew install reattach-to-user-namespace
```


# Install


Please copy `.tmux.conf.sample`,
```
$ cp .tmux.conf.sample ~/.tmux.conf
```

and modify it.
```
run-shell "powerline-daemon -q"
source ~/.pyenv/versions/3.6.5/lib/python3.6/site-packages/powerline/bindings/tmux/powerline.conf
source ~/dotfiles/.tmux/tmux.conf
```
