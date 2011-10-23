#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

VENDOR=semc
DEVICE=iyokan

rm -r ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary

# Prebuilt kl keymaps
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty2.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/atdaemon.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/AVRCP.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/msm_pmic_pwr_key.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/pm8058-keypad.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/qwerty.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/simple_remote.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keychars/us104-keyboard.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/us104-keyboard.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/usb_mouse.kl ../../../vendor/$VENDOR/$DEVICE/proprietary

## RIL related stuff 
adb pull /system/lib/libril.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/port-bridge ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/qmuxd ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libauth.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdiag.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdll.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdss.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libgstk_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnv.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/liboem_rapi.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/liboncrpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libpbmlib.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libqmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libqueue.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libuim.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libreference-ril.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libril-qc-1.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libwms.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libwmsts.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdsi_netctrl.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdsutils.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libidl.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnetmgr.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libqdp.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/netmgrd ../../../vendor/$VENDOR/$DEVICE/proprietary

## Adreno 200 files
adb pull /system/lib/libgsl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libgsl.so
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary

## Camera proprietaries
adb pull /system/lib/liboemcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libmmipl.so ../../../vendor/$VENDOR/$DEVICE/proprietary 
adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcamera_clientsemc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_client.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_debugger.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_hal.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_imageutil.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_pal.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_server.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libface.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libgemini.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcameraextensionclient.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcameraextensionjni.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcameraextensionservice.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcameralight.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/LGI08BN1.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/SOD08BN1.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/SOD08BN0.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/SOD08BN0_IMX073.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/LGI08BN0_IMX105.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/LM3560_02_flash.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/LGI08BN0_DW9714.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/SOD08BN1_DW9714.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/APT00YP0_MT9V144.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/APT00YP0.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/SOD08BN1_IMX105.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/SOD08BN0_DW9714.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/LGI08BN1_DW9714.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/LGI08BN0.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/LGI08BN1_IMX105.dat ../../../vendor/$VENDOR/$DEVICE/proprietary

## FIRMWARE
adb pull /system/etc/firmware/bq27520_fw-0506_filever-0111_proj-hall_golden.bqfs ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/bq27520_fw-0506_filever-0111_proj-hall_golden.dffs ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_rx_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_rx_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_tx_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_tx_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fmc_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fmc_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/TIInit_7.5.20.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/TIInit_7.6.15.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_command_control.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_h263_dec_mc.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_h264_dec_mc.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_h264_enc_mc.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_mp4_dec_mc.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_mp4_enc_mc.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_vc1_dec_mc.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$VENDOR/$DEVICE/proprietary


## WIFI & BT TI1271
adb pull /system/bin/nvimport ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/init.qcom.bt.sh ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/tiwlan.ini ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/wifi/wpa_supplicant.conf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/wifi/softap/hostapd.conf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/tiwlan_firmware.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/wifi/softap/tiwlan_ap.ini ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/wifi/softap/softap_firmware.bin ../../../vendor/$VENDOR/$DEVICE/proprietary

## Other libraries and proprietary binaries
adb pull /system/lib/libaudioalsa.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libaudioalsa.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/vold.fstab ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/sensors.conf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/sensors.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/bq275xx_fwloader ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/akmd8975 ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/chargemon ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libmiscta.so ../../../vendor/$VENDOR/$DEVICE/proprietary

#Temporary GPS Fix untill we have 50001 gps
adb pull /system/lib/hw/gps.msm7x30.so ../../../vendor/$VENDOR/$DEVICE/proprietary

#touch
adb pull /system/etc/firmware/touch_iyokan_ttsp.hex ../../../vendor/$VENDOR/$DEVICE/proprietary

#hardware keyboard layout
adb pull /system/usr/keyboard-config/keyprint.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/scancode_mapping.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_ara.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_bos.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_bul.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_cat.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_ces.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_dan.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_deu.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_ell.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_eng.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_esp.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_est.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_eus.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_fas.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_fin.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_fra.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_glg.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_heb.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_hrv.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_hun.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_ind.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_isl.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_ita.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_jav.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_kaz.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_lav.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_lit.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_mkd.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_msa.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_nld.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_nor.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_pol.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_por.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_ron.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_rus.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_slk.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_slv.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_sqi.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_srp.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_sun.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_swe.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_tgl.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_tha.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_tur.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_ukr.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/languages/language_vie.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/arabic.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/azerty.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/bopomofo.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/cyrillic.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/greek.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/hebrew.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/korean.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/qwerty-br.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/qwerty-cn-hk.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/qwerty-en.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/qwerty-jp.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/qwerty-no-dk.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/qwerty-se-fi.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/qwertz.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keyboard-config/layouts/thai.xml ../../../vendor/$VENDOR/$DEVICE/proprietary

#HDMI
adb pull /system/bin/hdmid ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libhdmidisplay.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/app/SemcHdmiControlService.apk ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/framework/com.sonyericsson.privateapis_impl.jar ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/permissions/com.sonyericsson.privateapis.xml ../../../vendor/$VENDOR/$DEVICE/proprietary

#ANT*
adb pull /system/app/AntHalService.apk ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/permissions/com.dsi.ant.antradio_library.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/framework/com.dsi.ant.antradio_library.jar ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libanthal.so ../../../vendor/$VENDOR/$DEVICE/proprietary

./setup-makefiles.sh

