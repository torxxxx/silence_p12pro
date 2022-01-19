#
# Copyright (c) 2020 Rockchip Electronics Co., Ltd
#
$(call inherit-product, vendor/partner_gms/products/gms_backup.mk)
PRODUCT_PACKAGES += \

# Disable partial updates
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.use_partial_updates=false

BOARD_SEPOLICY_DIRS += vendor/rockchip/hardware/interfaces/neuralnetworks/1.0/default/sepolicy


TARGET_SYSTEM_PROP += device/silence/p12pro/system.prop
TARGET_PRODUCT_PROP += device/silence/p12pro/product.prop
PRODUCT_PACKAGE_OVERLAYS := device/silence/p12pro/overlay
# enable this for support f2fs with data partion
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4




PRODUCT_COPY_FILES += \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.ota.host = www.rockchip.com:2300 \
    ro.vendor.sdkversion = $(CURRENT_SDK_VERSION) \
    vendor.gralloc.disable_afbc = 0 \
    ro.product.product.brand = Lenovo \
    ro.product.vendor.device = Q706F

#
# add Rockchip properties here
#
PRODUCT_PROPERTY_OVERRIDES += \
                ro.ril.ecclist=112,911 \
                ro.opengles.version=196610 \
                wifi.interface=wlan0 \
                ro.audio.monitorOrientation=true \
                debug.nfc.fw_download=false \
                debug.nfc.se=false \
                vendor.hwc.compose_policy=1 \
                sys.wallpaper.rgb565=0 \
                sf.power.control=2073600 \
                sys.rkadb.root=0 \
                ro.sf.fakerotation=false \
                ro.tether.denied=false \
                sys.resolution.changed=false \
                ro.default.size=100 \
                ro.product.usbfactory=rockchip_usb \
                wifi.supplicant_scan_interval=15 \
                ro.factory.tool=0 \
                ro.kernel.android.checkjni=0 \
                ro.build.shutdown_timeout=6 \
                persist.enable_task_snapshots=false \
                ro.vendor.frameratelock=true \
                

