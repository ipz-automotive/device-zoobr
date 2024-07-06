#!/system/bin/sh

echo 'Zoobr: init on boot'
# config eth0
ifconfig eth0 21.37.14.88 up
# start cluster
am force-stop org.ipzautomotive.zoobr.ZoobrClusterApp
am start -S --display 2 org.ipzautomotive.zoobr.ZoobrClusterApp/org.qtproject.qt.android.bindings.QtActivity
