# Teal Desktop Setup

Teal and orange Linux desktop setup with Conky, Polybar, and Rofi.

## Features
- Conky widget: CPU, RAM, disk, network, top processes, and live Google Calendar
- Polybar: slim status bar with date, CPU, RAM, disk, wifi, and battery
- Rofi: keyboard-driven app launcher (Alt+Space)
- Consistent teal, mint, and orange colour scheme across everything
- All tools autostart on login

## Dependencies
- `conky`
- `polybar`
- `rofi`
- `gcalcli` (authenticated with your Google account)
- Ubuntu Mono font

## Setup

### 1. Conky
```bash
cp conky/conkyrc ~/.conkyrc
cp conky/conky-cal.sh ~/conky-cal.sh
cp conky/conkystart.sh ~/conkystart.sh
chmod +x ~/conky-cal.sh ~/conkystart.sh
cp autostart/conky.desktop ~/.config/autostart/conky.desktop
```
Edit `~/.conkyrc` and replace `YOUR_NETWORK_INTERFACE` with your interface name (`ip link` to find it).
Authenticate gcalcli: `gcalcli init`

### 2. Polybar
```bash
mkdir -p ~/.config/polybar
cp polybar/config.ini ~/.config/polybar/config.ini
cp polybar/launch.sh ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/launch.sh
cp autostart/polybar.desktop ~/.config/autostart/polybar.desktop
```
Edit `~/.config/polybar/config.ini` and replace `eDP-1` with your monitor name (`polybar --list-monitors`) and `wlp0s20f3` with your network interface.

### 3. Rofi
```bash
mkdir -p ~/.config/rofi
cp rofi/config.rasi ~/.config/rofi/config.rasi
cp rofi/teal.rasi ~/.config/rofi/teal.rasi
cp rofi/launch.sh ~/.config/rofi/launch.sh
chmod +x ~/.config/rofi/launch.sh
```
Set the keyboard shortcut:
```bash
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "Rofi Launcher"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "/home/YOUR_USERNAME/.config/rofi/launch.sh"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "<Alt>space"
```
Replace `YOUR_USERNAME` with your username.

### 4. Wallpaper
Open `wallpaper/wallpaper-generator.html` in a browser, pick a seed, and download the PNG. Set it with:
```bash
gsettings set org.gnome.desktop.background picture-uri "file:///path/to/wallpaper.png"
```

## Languages
- Lua + Conky markup (conkyrc)
- Bash (shell scripts)
- INI (polybar config)
- CSS-like (rofi theme)
- HTML + JavaScript (wallpaper generator)
```
