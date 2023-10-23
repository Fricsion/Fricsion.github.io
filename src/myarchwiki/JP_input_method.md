# Linux Japanese Input Method Guide

## Just doesn't work in certain application. 
1. Run `fcitx5-diagnose`
2. Spot some errors (in red characters) about environment variables. 
3. Set them in a file 
e.g. Add these lines below to `~/.xinitrc`
```
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
```

## Libreoffice Japanese setting
kanji may be shown in simplified chinese form. 
In order to change that and default to japanese kanji, you have to follow the instruction below:
Tools -> Options -> Language -> Tick 'Asian' box and select Japanese from pull down menu.

## User dictionary setting (fcitx5)
1. Launch `fcitx5-configtool` 
2. Open 'Addons' tab
3. You can spot 'Mozc' under 'Input Method' 
4. Click 'Configure'
5. Spot 'Dictionary Tool'
6. Click 'Confugure'
There you have it. 

## Miscellaneous configurations
Some fcitx5 settings can be accessed in plain text format in 
`~/.config/fcitx5/config`
How amazing is that


