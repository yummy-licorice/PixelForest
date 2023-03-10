# PixelForest

### Dotfiles for my spring 2023 everforest rice with DKwm

Please leave a star if you like them

![hook](https://user-images.githubusercontent.com/88919270/224413134-6b67c3ed-6abb-4960-a3db-64949614d48a.png)

## Fonts

The required fonts are Cozette and CozetteVector available [here](https://github.com/slavfox/Cozette/releases/tag/v.1.19.1) </br>
The nerd fonts patched version of these fonts are also required, they can be found in the AUR [here](https://aur.archlinux.org/packages/nerd-fonts-cozette-ttf) for any arch users

Verify the fonts are installed by running
```bash
fc-cache && fc-list | grep "Cozette"
```

## Packages

| Package      | Purpose |
| ----------- | ----------- |
|[DKwm](https://aur.archlinux.org/packages/dk)|Window Manager|
|[SXHKD](https://archlinux.org/packages/community/x86_64/sxhkd/)|Keybind daemon|
|[Wezterm](https://archlinux.org/packages/community/x86_64/wezterm/)|Terminal emulator|
|[Fish](https://archlinux.org/packages/community/x86_64/fish/)|Shell|
|[Starship](https://archlinux.org/packages/community/x86_64/starship/)|Shell Prompt|
|[Rofi](https://archlinux.org/packages/community/x86_64/rofi/)|App Launcher|
|[Dunst](https://archlinux.org/packages/community/x86_64/dunst/)|Notifications|
|[Eww](https://aur.archlinux.org/packages/eww)|Desktop Widgets and bar|
|[Nim](https://archlinux.org/packages/community/x86_64/nim/)|Compile scripts for eww|

```bash
paru -S dk sxhkd wezterm fish starship rofi dunst eww nim
```
## Installation
You can either install all of the files at once or just a specific component
```bash
make [<component>]
```
|Component|Contents|
|---------|--------|
|dk|Window manager config and screenshot script|
|terminal|Terminal and shell configs|
|rofi|Rofi App Launcher configuration|
|dunst|Dunst notification daemon configurations|
|eww|Bar and widgets|

## Showcase
![dunst](https://user-images.githubusercontent.com/88919270/224413316-ad77d503-fa39-49fc-9b33-af4ebaf633f0.png)
![rofi](https://user-images.githubusercontent.com/88919270/224413368-87182738-eef7-4e0a-910a-490ebc7c87f1.png)
