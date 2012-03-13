# CCI flex 
#!/system/bin/sh

#install libs
export LD_LIBRARY_PATH=/system/flex/lib:${LD_LIBRARY_PATH}

ln -s /system/flex/lib/libjbmidp.so /system/lib/libjbmidp.so
ln -s /system/flex/lib/libjbmidpdy.so /system/lib/libjbmidpdy.so
ln -s /system/flex/lib/libjni_xt9input.so /system/lib/libjni_xt9input.so
ln -s /system/flex/lib/libpphwrsdk.so /system/lib/libpphwrsdk.so

#install apks
APKS=`ls /system/flex/app`
for apk in ${APKS}
do
#echo ${apk}
ln -s /system/flex/app/${apk} /system/app/${apk}
done

EXES=`ls /system/flex/xbin`
for exe in ${EXES}
do
chmod 700 /system/flex/xbin/tcpdump
ln -s /system/flex/xbin/${exe} /system/xbin/${exe}
done

#install framework
FRAMEWORKS=`ls /system/flex/framework`
for framework in ${FRAMEWORKS}
do
#echo ${framework}
ln -s /system/flex/framework/${framework} /system/framework/${framework}
done

#install etc permissions
PERMISSIONS=`ls /system/flex/etc/permissions`
for permissions in ${PERMISSIONS}
do
#echo ${permissions}
ln -s /system/flex/etc/permissions/${permissions} /system/etc/permissions/${permissions}
done

#cehck updatecmds folder
if ls /system/flex/etc/updatecmds
then
 ln -s /system/flex/etc/updatecmds /system/etc/updatecmds
fi

#install ringtones
mount -o remount,rw -t yaffs2 /dev/block/mtdblock3 /system
RINGTONES=`ls /system/flex/audio/ringtones`
for ringtone in ${RINGTONES}
do
    #echo ${ringtone}
    #if [ ! -f /system/media/audio/ringtones/${ringtone} ]
    #then
        cat /system/flex/audio/ringtones/${ringtone} > /system/media/audio/ringtones/${ringtone}
    #fi
done
#install notification sound
NOTIFICATION=`ls /system/flex/audio/notifications`
for notification in ${NOTIFICATION}
do   
        cat /system/flex/audio/notifications/${notification} > /system/media/audio/notifications/${notification}
 
done
#install alarm sound
ALARMS=`ls /system/flex/audio/alarms`
for alarm in ${ALARMS}
do   
        cat /system/flex/audio/alarms/${alarm} > /system/media/audio/alarms/${alarm} 
done

#install xt9
XT9=`ls /system/flex/etc/xt9`
for xt9 in ${XT9}
do
ln -s /system/flex/etc/xt9/${xt9} /system/usr/xt9/config/${xt9}
done
rm /system/usr/xt9/config/inputmethods.xml

#install nemoplayer lib
if ls /system/flex/lib/libdec.so
then 
 ln -s /system/flex/lib/libdec.so /system/lib/libdec.so
fi
if ls /system/flex/lib/libstream_core.so
then 
 ln -s /system/flex/lib/libsteam_core.so /system/lib/libstream_core.so
fi
if ls /system/flex/lib/libfilter.so
then 
 ln -s /system/flex/lib/libfilter.so /system/lib/libfilter.so
fi
if ls /system/flex/lib/libfpx_core.so
then 
 ln -s /system/flex/lib/libfpx_core.so /system/lib/libfpx_core.so
fi

#install fet ebook lib
if ls /system/flex/lib/libdrmagent_jni.so
then 
 ln -s /system/flex/lib/libdrmagent_jni.so /system/lib/libdrmagent_jni.so
fi
if ls /system/flex/lib/libfet-libfepub.so
then 
 ln -s /system/flex/lib/libfet-libfepub.so /system/lib/libfet-libfepub.so
fi
if ls /system/flex/lib/libfet-libfpdf.so
then 
 ln -s /system/flex/lib/libfet-libfpdf.so /system/lib/libfet-libfpdf.so
fi

chmod 774 /system/flex/etc/camera_error


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
echo "End firmware update"

#projid=`cat /proc/project_id`
#case "$projid" in
#    "myprojA")
#        do something ;;
#esac

mount -o remount,ro -t yaffs2 /dev/block/mtdblock3 /system
