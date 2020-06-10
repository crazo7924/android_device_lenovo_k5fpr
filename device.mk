### PLATFORM
$(call inherit-product, device/lenovo/mt6753-common/platform.mk)
### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/lenovo/k5fpr-vendor.mk)

### DALVIK
$(call inherit-product, frameworks/native/build/phone-xhdpi-3072-dalvik-heap.mk)

DEVICE_PATH := device/lenovo/k5fpr

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 420dpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

# Hardware-specific permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

include $(DEVICE_PATH)/device/*.mk
