#!/system/bin/sh

# Turn the led off if not plugged in
if [ `cat /sys/class/power_supply/battery/charge_type` = "N/A" ]; then
  echo 0 > /sys/devices/virtual/lg_rgb_led/use_patterns/setting
fi
