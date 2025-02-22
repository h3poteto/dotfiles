# Polybar

## Install
```
$ yay -S polybar
$ ln -s ~/dotfiles/.config/polybar ~/.config/polybar
```

## Dependencies

- ttf-ubuntu-font-family
- ttf-material-design-icons
- parcellite
- deadd-notification-center
- picom
- pulseaudio
- pavucontrol
- rofi
- maim
- nemo
- feh

## CPU temperature
Find temp file
```
$ for i in /sys/class/hwmon/hwmon*/temp*_input; do echo "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*})) $(readlink -f $i)"; done
nvme: Composite /sys/devices/pci0000:00/0000:00:02.2/0000:17:00.0/nvme/nvme0/hwmon0/temp1_input
nvme: Sensor 1 /sys/devices/pci0000:00/0000:00:02.2/0000:17:00.0/nvme/nvme0/hwmon0/temp2_input
nvme: Sensor 2 /sys/devices/pci0000:00/0000:00:02.2/0000:17:00.0/nvme/nvme0/hwmon0/temp3_input
amdgpu: edge /sys/devices/pci0000:00/0000:00:08.1/0000:18:00.0/hwmon/hwmon1/temp1_input
k10temp: Tctl /sys/devices/pci0000:00/0000:00:18.3/hwmon/hwmon2/temp1_input
k10temp: Tccd1 /sys/devices/pci0000:00/0000:00:18.3/hwmon/hwmon2/temp3_input
k10temp: Tccd2 /sys/devices/pci0000:00/0000:00:18.3/hwmon/hwmon2/temp4_input
```

Then, Tctl is the total CPU temperature. Please create a symlink for this file.

```
$ ln -s /sys/class/hwmon/hwmon2/temp1_input ~/.config/polybar/cpu_temp
```

