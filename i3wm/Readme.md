# i3wm

## Install dependences

```bash
sudo apt-get install i3 feh rofi
```

## Download siji fonts

```bash
cd /tmp
git clone https://github.com/stark/siji && cd siji
./install.sh
xset +fp ~/.local/share/fonts
xset fp rehash
sudo fc-cache -f -v
```

## Install [polybar](https://github.com/jaagr/polybar)

```bash
sudo apt-get install cmake libcairo2-dev libxcb-randr0-dev libxcb-composite0-dev xcb-proto libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev python-xcbgen
cd /tmp
wget https://github.com/jaagr/polybar/releases/download/3.4.0/polybar-3.4.0.tar
tar xvf polybar-3.4.0.tar
cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
```

## Polybar theme

```bash
cd /tmp
git clone https://github.com/adi1090x/polybar-themes.git
```

## Place config file

```bash
mkdir -p ~/.config/i3
mkdir -p ~/Pictures/Wallpapers
cp i3wm_config ~/.config/i3/config
```

At the end of this file there is a commented line that executes my own display config script.

## Enable tap to click in i3 WM

```bash
sudo mkdir -p /etc/X11/xorg.conf.d
sudo cp 90-touchpad.conf /etc/X11/xorg.conf.d/90-touchpad.conf
```
