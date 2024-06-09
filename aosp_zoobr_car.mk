# Add boot animation
PRODUCT_COPY_FILES += \
    packages/services/Car/car_product/car_ui_portrait/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Inherit aosp_rpi4_car
include device/brcm/rpi4/aosp_rpi4_car.mk

PRODUCT_NAME := aosp_zoobr_car
PRODUCT_DEVICE := zoobr

# set portrait mode
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.primary_display_orientation=ORIENTATION_270

# Exclude AAE Car System UI
DO_NOT_INCLUDE_AAE_CAR_SYSTEM_UI := true

# Exclude Car UI Reference Design
DO_NOT_INCLUDE_CAR_UI_REFERENCE_DESIGN := true

$(call inherit-product, packages/services/Car/car_product/car_ui_portrait/apps/car_ui_portrait_apps.mk)
$(call inherit-product, packages/services/Car/car_product/car_ui_portrait/rro/car_ui_portrait_rro.mk)

PRODUCT_COPY_FILES += \
    packages/services/Car/car_product/car_ui_portrait/car_ui_portrait_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/car_ui_portrait_hardware.xml

PRODUCT_COPY_FILES += \
    packages/services/Car/car_product/car_ui_portrait/car_ui_portrait_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/car_ui_portrait_hardware.xml

# Vehicle
PRODUCT_PACKAGES := $(filter-out android.hardware.automotive.vehicle@2.0-default-service,$(PRODUCT_PACKAGES))

PRODUCT_PACKAGES += \
        android.hardware.automotive.vehicle@2.0-zoobr-service \
        car_emulator
