# Add non-removable cluster by creating a display on hwservicemanager.
PRODUCT_COPY_FILES += \
    device/ipz-automotive/zoobr/cluster/display_settings.xml:$(TARGET_COPY_OUT_VENDOR)/etc/display_settings.xml \

PRODUCT_PRODUCT_PROPERTIES += \
    hwservicemanager.external.displays=1,1920,540,120,0

PRODUCT_PACKAGES += \
    CarServiceOverlayMdZoobrOsDouble \
    ClusterOsDoubleZoobrPhysicalDisplayOverlay

DEVICE_PACKAGE_OVERLAYS += \
    device/ipz-automotive/zoobr/cluster/overlay
