#!/system/bin/sh

#install touch firmware
#cat /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/update_enable
#echo 1 > /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/isp_ctrl
#cat /system/flex/panel.cfg > /sys/devices/i2c-0/0-0064/panel_config
#cat /system/flex/autotune.bin > /sys/devices/i2c-0/0-0064/flash
#echo 0 > /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/isp_ctrl
#echo 1 1 0x0b 0x1c 0x40 0xc0 600 800 > /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/autotune_en
#echo 1 > /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/isp_ctrl
#cat /system/flex/touch_panel.bin > /sys/devices/i2c-0/0-0064/flash
#echo 0 > /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/isp_ctrl
cat /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/reset_fw
echo "End touch init"
