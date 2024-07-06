# Add non-removable cluster by creating a display on hwservicemanager.
PRODUCT_COPY_FILES += \
    device/ipz-automotive/zoobr/cluster/display_settings.xml:$(TARGET_COPY_OUT_VENDOR)/etc/display_settings.xml \

PRODUCT_PRODUCT_PROPERTIES += \
    hwservicemanager.external.displays=1,1920,540,120,0

# copy init script to /vendor/etc
PRODUCT_COPY_FILES += \
    device/ipz-automotive/zoobr/cluster/init_zoobr.sh:$(TARGET_COPY_OUT_VENDOR)/etc/init_zoobr.sh

PRODUCT_PACKAGES += \
    org.ipzautomotive.zoobr.ZoobrClusterApp \
    CarServiceOverlayMdZoobrOsDouble \
    ClusterOsDoubleZoobrPhysicalDisplayOverlay

DEVICE_PACKAGE_OVERLAYS += \
    device/ipz-automotive/zoobr/cluster/overlay
