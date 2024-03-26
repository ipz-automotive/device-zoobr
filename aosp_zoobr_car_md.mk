PRODUCT_PACKAGES += CarServiceOverlayMdZoobrOsDouble

PRODUCT_COPY_FILES += \
	device/ipz-automotive/zoobr/multi-display/car_audio_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/car_audio_configuration.xml

PRODUCT_COPY_FILES += \
	device/ipz-automotive/zoobr/multi-display/display_settings.xml:$(TARGET_COPY_OUT_VENDOR)/etc/display_settings.xml

PRODUCT_COPY_FILES += \
	device/ipz-automotive/zoobr/multi-display/input-port-associations.xml:$(TARGET_COPY_OUT_VENDOR)/etc/input-port-associations.xml

$(call inherit-product, device/ipz-automotive/zoobr/aosp_zoobr_car.mk)

PRODUCT_PACKAGES += \
	MultiClientInputMethod \
	MultiDisplaySecondaryHomeTestLauncher \
	MultiDisplayTest

PRODUCT_PRODUCT_PROPERTIES +=
	ro.sys.multi_client_ime=com.example.android.multiclientinputmethod/.MultiClientInputMethod \
	persist.debug.multi_client_ime=com.example.android.multiclientinputmethod/.MultiClientInputMethod \
	boot.animation.displays=4619827259835644672, 4619827124781842690

PRODUCT_PACKAGE_OVERLAYS += \
	device/ipz-automotive/zoobr/multi-display/overlay