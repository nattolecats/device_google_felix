#!/bin/bash

BRANCH=udc

FROM=(
    "https://gitlab.com/nattolecats/vendor_google_felix"
    "https://github.com/Evolution-X-Devices/packages_apps_PixelParts"
)

TO=(
    "vendor/google/felix"
    "packages/apps/PixelParts"
)

for i in "${!FROM[@]}"; do
    git clone "${FROM[$i]}" "${TO[$i]}" -b $BRANCH
done

git clone https://github.com/LineageOS/android_device_google_gs-common -b lineage-21 device/google/gs-common
