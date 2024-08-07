# include BoardConfig.mk
include device/brcm/rpi4/BoardConfig.mk

# Override brcm/rpi4 properties
TARGET_VENDOR_PROP := device/ipz-automotive/zoobr/vendor.prop

# Display
TARGET_SCREEN_DENSITY := 120

# Vehicle SEPolicy
BOARD_SEPOLICY_DIRS += \
	vendor/ipz-automotive/zoobr_vhal/sepolicy
