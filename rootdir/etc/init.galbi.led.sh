#!/system/bin/sh

# Turn the led off if not plugged in or if already at 100%
if [ `cat /sys/class/power_supply/battery/charge_type` = "N/A" ] || [ `cat /sys/class/power_supply/battery/capacity` == "100" ]; then
  echo 0 > /sys/devices/virtual/lg_rgb_led/use_patterns/setting
fi
