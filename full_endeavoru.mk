#
# Copyright (C) 2012 The Android Open-Source Project
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 mdeejay <mdjrussia@gmail.com>
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS := device/htc/endeavoru/overlay

# Camera
PRODUCT_PACKAGES := \
    Camera \
    camera.tegra

# Files needed for boot image
PRODUCT_COPY_FILES := \
	device/htc/endeavoru/ramdisk/init.rc:root/init.rc \
	device/htc/endeavoru/ramdisk/init.endeavoru.rc:root/init.endeavoru.rc \
	device/htc/endeavoru/ramdisk/init.usb.rc:root/init.usb.rc \
	device/htc/endeavoru/ramdisk/ueventd.rc:root/ueventd.rc \
	device/htc/endeavoru/ramdisk/ueventd.endeavoru.rc:root/ueventd.endeavoru.rc \
	device/htc/endeavoru/ramdisk/init:root/init


# Prebuilt Audio/GPS/Camera/Wi-Fi configs
PRODUCT_COPY_FILES += \
	device/htc/endeavoru/dsp/asound.conf:system/etc/asound.conf \
	device/htc/endeavoru/dsp/AIC3008_REG_DualMic_XC.csv:system/etc/AIC3008_REG_DualMic_XC.csv \
	device/htc/endeavoru/dsp/AIC3008_REG_DualMic.csv:system/etc/AIC3008_REG_DualMic.csv \
	device/htc/endeavoru/dsp/DSP_number.txt:system/etc/DSP_number.txt \
	device/htc/endeavoru/configs/nvcamera.conf:system/etc/nvcamera.conf \
        device/htc/endeavoru/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/htc/endeavoru/configs/gps.conf:system/etc/gps.conf \
	device/htc/endeavoru/configs/htcfs.conf:system/etc/htcfs.conf \
	device/htc/endeavoru/configs/SuplRootCert:system/etc/SuplRootCert \
	device/htc/endeavoru/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/htc/endeavoru/configs/hostapd.conf:system/etc/wifi/hostapd.conf \
	device/htc/endeavoru/configs/TQS_D_1.7.ini:system/etc/wifi/TQS_D_1.7.ini \
	device/htc/endeavoru/configs/htc_1281fw.bin:system/etc/wifi/htc_1281fw.bin \
	device/htc/endeavoru/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \

# BT config
PRODUCT_COPY_FILES += \
  system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# Prebuilt Alsa configs
PRODUCT_COPY_FILES += \
	device/htc/endeavoru/usr/share/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
	device/htc/endeavoru/usr/share/alsa/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
	device/htc/endeavoru/usr/share/alsa/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf

# Vold.fstab
PRODUCT_COPY_FILES += \
	device/htc/endeavoru/vold.fstab:system/etc/vold.fstab

# Media configs
PRODUCT_COPY_FILES += \
    device/htc/endeavoru/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/htc/endeavoru/media_codecs.xml:system/etc/media_codecs.xml

# Input device configeration files
PRODUCT_COPY_FILES += \
	device/htc/endeavoru/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/htc/endeavoru/usr/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
	device/htc/endeavoru/usr/idc/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
	device/htc/endeavoru/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
	device/htc/endeavoru/usr/idc/tv-touchscreen.idc:system/usr/idc/tv-touchscreen.idc

# Any prebuilt kernel modules
PRODUCT_COPY_FILES += \
        device/htc/endeavoru/modules/baseband_usb_chr.ko:system/lib/modules/baseband_usb_chr.ko \
        device/htc/endeavoru/modules/baseband-xmm-power2.ko:system/lib/modules/baseband-xmm-power2.ko \
        device/htc/endeavoru/modules/bluetooth.ko:system/lib/modules/bluetooth.ko \
        device/htc/endeavoru/modules/bnep.ko:system/lib/modules/bnep.ko \
        device/htc/endeavoru/modules/btwilink.ko:system/lib/modules/btwilink.ko \
        device/htc/endeavoru/modules/cavm_sqos_mod.ko:system/lib/modules/cavm_sqos_mod.ko \
        device/htc/endeavoru/modules/cdc-acm.ko:system/lib/modules/cdc-acm.ko \
        device/htc/endeavoru/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
        device/htc/endeavoru/modules/compat.ko:system/lib/modules/compat.ko \
        device/htc/endeavoru/modules/fm_drv.ko:system/lib/modules/fm_drv.ko \
        device/htc/endeavoru/modules/gps_drv.ko:system/lib/modules/gps_drv.ko \
        device/htc/endeavoru/modules/hci_uart.ko:system/lib/modules/hci_uart.ko \
        device/htc/endeavoru/modules/htc_sqos_ctrlmsg.ko:system/lib/modules/htc_sqos_ctrlmsg.ko \
        device/htc/endeavoru/modules/htc_sqos_encoder.ko:system/lib/modules/htc_sqos_encoder.ko\
        device/htc/endeavoru/modules/htc_sqos_wifi.ko:system/lib/modules/htc_sqos_wifi.ko \
        device/htc/endeavoru/modules/kineto_gan.ko:system/lib/modules/kineto_gan.ko \
        device/htc/endeavoru/modules/lib80211.ko:system/lib/modules/lib80211.ko \
        device/htc/endeavoru/modules/mac80211.ko:system/lib/modules/mac80211.ko \
        device/htc/endeavoru/modules/raw_ip_net.ko:system/lib/modules/raw_ip_net.ko \
        device/htc/endeavoru/modules/rfcomm.ko:system/lib/modules/rfcomm.ko \
        device/htc/endeavoru/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
        device/htc/endeavoru/modules/st_drv.ko:system/lib/modules/st_drv.ko \
        device/htc/endeavoru/modules/ti_hci_drv.ko:system/lib/modules/ti_hci_drv.ko \
        device/htc/endeavoru/modules/wl12xx.ko:system/lib/modules/wl12xx.ko \
        device/htc/endeavoru/modules/wl12xx_sdio.ko:system/lib/modules/wl12xx_sdio.ko

# Polly
PRODUCT_PACKAGES += \
	pollyd \
	Polly

# Hostapd
PRODUCT_PACKAGES += \
         calibrator \
         hostapd_cli \
         hostapd \
         iw

# lights
PRODUCT_PACKAGES += \
        lights.endeavoru

# Power
PRODUCT_PACKAGES += \
        power.endeavoru

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
        libaudioutils \
        libtinyalsa

# Common
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs \
	l2ping \
	com.android.future.usb.accessory \
	whisperd

# NFC
PRODUCT_PACKAGES += \
	libnfc \
	libnfc_ndef \
	libnfc_jni \
	Nfc \
	Tag \
	com.android.nfc_extras

# Live Wallpapers
PRODUCT_PACKAGES += \
	LiveWallpapers \
	LiveWallpapersPicker \
	VisualizationWallpapers \
	librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs

# Torch
PRODUCT_PACKAGES += \
        Torch

# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_PACKAGES += send_bug
    PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug
endif

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml)

PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.setupwizard.enable_bypass=1 \
        dalvik.vm.execution-mode=int:jit \
        dalvik.vm.lockprof.threshold=500 \
        dalvik.vm.dexopt-flags=m=y \
	persist.sys.usb.config=mass_storage,adb

# Tegra 3 spacific overrides
PRODUCT_PROPERTY_OVERRIDES += \
	persist.tegra.nvmmlite=1 \
        tf.enable=y

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US xhdpi

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/htc/endeavoru/endeavoru-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
