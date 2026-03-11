A minimal Linux desktop setup with a teal and orange colour scheme, featuring a Conky system/calendar widget and a Polybar status bar.

## Features
- Conky widget: CPU, RAM, disk, network, top processes, and live Google Calendar
- Polybar: slim status bar with date, CPU, RAM, disk, wifi, and battery
- Consistent teal, mint, and orange colour scheme across both
- Both autostart on login with a sleep delay to wait for the desktop to load

## Dependencies
- conky
- polybar
- gcalcli (authenticated with your Google account)
- Ubuntu Mono font

## Setup

### Conky
1. Find your network interface: `ip link`
2. Replace `YOUR_NETWORK_INTERFACE` in `.conkyrc`
3. Authenticate gcalcli: `gcalcli init`
4. Copy `.conkyrc` to `~/.conkyrc`
5. Copy `conky-cal.sh` to `~/conky-cal.sh` and run `chmod +x ~/conky-cal.sh`
6. Copy `conkystart.sh` to `~/conkystart.sh` and run `chmod +x ~/conkystart.sh`
7. Copy `autostart/conky.desktop` to `~/.config/autostart/conky.desktop`

### Polybar
1. Replace `eDP-1` in `config.ini` with your monitor name: `polybar --list-monitors`
2. Replace `wlp0s20f3` with your network interface name
3. Copy `config.ini` to `~/.config/polybar/config.ini`
4. Copy `launch.sh` to `~/.config/polybar/launch.sh` and run `chmod +x ~/.config/polybar/launch.sh`
5. Copy `autostart/polybar.desktop` to `~/.config/autostart/polybar.desktop`

## Wallpaper
A matching generative wallpaper generator is included (`wallpaper-generator.html`).
Open it in a browser, pick a seed you like, and download the PNG.
