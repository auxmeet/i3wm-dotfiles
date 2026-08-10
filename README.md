# i3wm-dotfiles
for install my dotfiles and stuff type this in your terminal
 ```bash
git clone https://github.com/auxmeet/i3wm-dotfiles.git
cd i3wm-dotfiles
chmod +x onestep.sh
chmod +x twostep.sh
sudo ./onestep.sh
./twostep.sh
```

## !! Use only [CachyOS](https://cachyos.org/download/) or other Arch-based !!

# How to use Fastfetch
`fastfetch --config ~/.config/fastfetch/fastfetch.jsonc`

# Keybinds
## System & Media
- `Super + C`: Reload the i3.
- `Super + R`: Restart i3.
- `Super + P`: Exit i3.
- `XF86AudioRaiseVolume` or `FN + F3`: Increases the volume by 5%.
- `XF86AudioLowerVolume` or `FN + F2`: Decreases the volume by 5%.
- `XF86AudioMute` or `FN + F4`: Mutes or unmutes the default audio device.

## Window & Application Management
- `Super + Return` or `Super + (Enter)`: Open Kitty terminal emulator.
- `Super + D`: Open Rofi application launcher menu.
- `Super + T`: Open Thunar (XFCE) file manager.
- `Super + H`: Open Helium web browser.
- `Alt + Tab`: Switch between windows.

## Screenshots
- `Super + Shift + D`: Takes a screenshot of the entire screen, copies it to the clipboard, and deletes the temporary file.
- `Super + Shift + S`: Allows you to select an area or window to screenshot a region, copies it to the clipboard, and deletes the temporary file.

## Focus & Navigation
- `Super + Left, Down, Up, Right`: Changes window focus to the neighboring window in that direction.
- `Super + Shift + Left, Down, Up, Right`: Swaps the position of the focused window with the window in that direction.
- `Super + 1-9, 0`: Switches to the selected workspace (1 to 10).
- `Super + Shift + 1-9, 0`: Sends the focused window to the selected

## Layout & Tiling Controls
- `Super + H`: Split horizontally (forces the next opened window to appear to the right).
- `Super + V`: Split vertically (forces the next opened window to appear below).
- `Super + F`: Toggle fullscreen mode for the active window.
- `Super + S`: Stacking layout (stacks windows vertically; only active window title is fully visible).
- `Super + W`: Tabbed layout (arranges windows like browser tabs at the top).
- `Super + L`: Toggle split (switches the current container layout direction).
- `Super + Shift + Space`: Toggle floating (switches the focused window between tiled and floating mode).
- `Super + Space`: Toggle focus mode (switches focus control between the tiling layer and floating layer).

## Window Resizing Mode
### Pressing `Super + Z` enters a dedicated Resize Mode. While in this mode, standard keybinds are locked, and the arrow keys behave as follows:
- `Right`: Shrink width of the window.
- `Left`:  Grow width of the window.
- `Up`: Grow height of the window.
- `Down`: Shrink height of the window.
- `Return` or `Escape`: Exit resize mode and return to standard controls.

# Packages list 
## Installed with pacman:
- i3-wm - X11 Window Manager.

- rofi - Application Launcher.

- udiskie - Auto Mount Disks or USB Sticks.

- udisks2 - Background Service to Manage Storage Devices.

- polybar - Customizable Bar.

- dunst - Notification Daemon.

- kitty - Fast GPU Terminal.

- maim - A Command-Line Utility Used to Capture Screenshots.

- feh - A Fast Lightweight Image Viewer and Wallpaper.

- xclip - A Command-Line Tool that makes copy your Screenshot.

- fastfetch - Command-Line Utility that Displays Hardware Information.

- xorg-xsetroot - A Command-Line Tool used to Customize Cursor on an X11 Display Server.

- xorg-xrandr - A Command-Line Utility for X Window System lets you Change Screen Resolutions and Refresh Rates.

- xorg-xinit - A Program Used to manually Start Xorg Display Server.

- xorg-server - A Display Server to manage the Graphical User Interface.

- base-devel - A Package Group used for Compiling and Building Software.

- ly - A Lightweight Command-line Display Manager.

## Installed with git:
- paru - A Feature-Packed Helper and Wrapper for Pacman.

## Installed with paru:
- picom-ftlabs-git - A Fork of Picom that support animations. 

# Wallpaper
![wall.jpg](wall.jpg)
