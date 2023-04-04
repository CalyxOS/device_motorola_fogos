#
# SPDX-FileCopyrightText: 2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit from device
$(call inherit-product, device/motorola/fogos/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := calyx_fogos
PRODUCT_DEVICE := fogos
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g34 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="fogos_g-user 14 U1UGS34.23-110-23-4 38326-64efdd release-keys" \
    BuildFingerprint=motorola/fogos_g/fogos:14/U1UGS34.23-110-23-4/38326-64efdd:user/release-keys \
    DeviceProduct=fogos_g
