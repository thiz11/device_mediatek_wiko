# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

$(call inherit-product, device/mediatek/wiko/device_wiko.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wiko
PRODUCT_NAME := cm_wiko
PRODUCT_BRAND := wiko
PRODUCT_MODEL := wiko
PRODUCT_MANUFACTURER := wiko
