# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PRODUCT_PACKAGES += \
    com.qualcomm.location \
    qcnvitems \
    qcrilhook

$(call inherit-product, vendor/vodafone/p839v55/p839v55-vendor-blobs.mk)

$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9306; \
	ln -sf /data/misc/audio/wcd9320_anc.bin \
		$(TARGET_OUT_ETC)/firmware/wcd9306/wcd9306_anc.bin; \
	ln -sf /data/misc/audio/mbhc.bin \
		$(TARGET_OUT_ETC)/firmware/wcd9306/wcd9306_mbhc.bin)

$(shell \
	ln -sf /system/vendor/lib/libimscamera_jni.so \
		/system/vendor/app/ims/lib/arm/libimscamera_jni.so
	ln -sf /system/vendor/lib/libimsmedia_jni.so \
		/system/vendor/app/ims/lib/arm/libimsmedia_jni.so)
		
