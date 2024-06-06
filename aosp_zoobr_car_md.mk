# Cluster settings
$(call inherit-product, device/ipz-automotive/zoobr/cluster/cluster-hwservicemanager.mk)

$(call inherit-product, device/ipz-automotive/zoobr/aosp_zoobr_car.mk)

PRODUCT_PACKAGES += \
    MultiDisplaySecondaryHomeTestLauncher \
    MultiDisplayTest

PRODUCT_PRODUCT_PROPERTIES +=
	ro.sys.multi_client_ime=com.example.android.multiclientinputmethod/.MultiClientInputMethod \
	persist.debug.multi_client_ime=com.example.android.multiclientinputmethod/.MultiClientInputMethod

DEVICE_PACKAGE_OVERLAYS += \
	device/ipz-automotive/zoobr/multi-display/overlay
