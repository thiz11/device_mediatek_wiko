# Default config:
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, vendor/mediatek/wiko/wiko-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/mediatek/wiko/overlay

PRODUCT_NAME := wiko
PRODUCT_DEVICE := wiko

PRODUCT_AAPT_CONFIG := normal hdpi mdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    persist.mtk.aee.aed=on \
    persist.sys.usb.config=mass_storage,adb \
    persist.service.acm.enable=0

#Permissions dump from device
PRODUCT_COPY_FILES += \
	device/mediatek/wiko/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml\
	device/mediatek/wiko/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml\
	device/mediatek/wiko/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml\
	device/mediatek/wiko/permissions/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml\
	device/mediatek/wiko/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml\
	device/mediatek/wiko/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml\
	device/mediatek/wiko/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml\
	device/mediatek/wiko/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml\
	device/mediatek/wiko/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml\
	device/mediatek/wiko/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml\
	device/mediatek/wiko/permissions/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml\
	device/mediatek/wiko/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml\
	device/mediatek/wiko/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml\
	device/mediatek/wiko/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml\
	device/mediatek/wiko/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml\
	device/mediatek/wiko/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml\
	device/mediatek/wiko/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml\
	device/mediatek/wiko/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml\
	device/mediatek/wiko/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml\
	device/mediatek/wiko/permissions/android.software.sip.xml:system/etc/permissions/android.software.sip.xml\
	device/mediatek/wiko/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml\
	device/mediatek/wiko/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml\
	device/mediatek/wiko/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml\
	device/mediatek/wiko/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml\
	device/mediatek/wiko/permissions/com.mediatek.location.provider.xml:system/etc/permissions/com.mediatek.location.provider.xml\
	device/mediatek/wiko/permissions/features.xml:system/etc/permissions/features.xml\
	device/mediatek/wiko/permissions/gpsconfig.xml:system/etc/permissions/gpsconfig.xml\
	device/mediatek/wiko/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml\
	device/mediatek/wiko/permissions/platform.xml:system/etc/permissions/platform.xml\
	

PRODUCT_COPY_FILES += \
    device/mediatek/wiko/prebuilt/root/init.wiko.rc:root/init.wiko.rc \
    device/mediatek/wiko/prebuilt/root/init.usb.wiko.rc:root/init.usb.wiko.rc \
    device/mediatek/wiko/prebuilt/root/ueventd.wiko.rc:root/ueventd.wiko.rc \
    device/mediatek/wiko/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/mediatek/wiko/prebuilt/system/usr/keylayout/wiko_keypad.kl:/system/usr/keylayout/wiko_keypad.kl\
    device/mediatek/wiko/prebuilt/system/etc/.tp/thermal.conf:/system/etc/.tp/thermal.conf\
    device/mediatek/wiko/prebuitl/system/etc/.tp/thermal.off.conf:/system/etc/.tp/thermal.off.conf \
    device/mediatek/wiko/prebuilt/system/etc/mpeg4_venc_parameter.cfg:/system/etc/mpeg4_venc_parameter.cfg \
    device/mediatek/wiko/prebuilt/system/etc/mtk_omx_core.cfg:/system/etc/mtk_omx_core.cfg \
    device/mediatek/wiko/prebuilt/system/etc/player.cfg:/system/etc/player.cfg \
    device/mediatek/wiko/prebuilt/system/etc/srs_processing.cfg:/system/etc/srs_processing.cfg
