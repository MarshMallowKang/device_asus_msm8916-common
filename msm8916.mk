#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from the proprietary version
$(call inherit-product, vendor/asus-Z00RD/msm8916-common-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    $(LOCAL_PATH)/permissions/asus.software.azs.xml:system/etc/permissions/asus.software.azs.xml \
    $(LOCAL_PATH)/permissions/asus.software.zenui.xml:system/etc/permissions/asus.software.zenui.xml

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8916 \
    audio.r_submix.default \
    audio.usb.default \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/audio/mixer_paths_mtp_EU.xml:system/etc/mixer_paths_mtp_EU.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    $(LOCAL_PATH)/audio/mixer_paths_sbc.xml:system/etc/mixer_paths_sbc.xml \
    $(LOCAL_PATH)/audio/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    $(LOCAL_PATH)/audio/mixer_paths_skul.xml:system/etc/mixer_paths_skul.xml \
    $(LOCAL_PATH)/audio/mixer_paths_wcd9306.xml:system/etc/mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Camera
PRODUCT_PACKAGES += \
    bspcapability \
    camera.msm8916 \
    Snap

# Charger

# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    libtinyxml \
    memtrack.msm8916

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Gello
PRODUCT_PACKAGES += \
    Gello

# GPS
PRODUCT_PACKAGES += \
    gps.msm8916

PRODUCT_PACKAGES += \
    flp.conf \
    gps.conf \
    izat.conf \
    quipc.conf \
    sap.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ASUS_TransKeyboard.kl:system/usr/keylayout/ASUS_TransKeyboard.kl \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/msm8939-snd-card-mtp_Button_Jack.kl:system/usr/keylayout/msm8939-snd-card-mtp_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/focal-touchscreen.kl:system/usr/keylayout/focal-touchscreen.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/keylayout/i-rocks_Bluetooth_Keyboard.kl:system/usr/keylayout/i-rocks_Bluetooth_Keyboard.kl


PRODUCT_PACKAGES += \
    keystore.msm8916

# Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/focal-touchscreen.kcm:system/usr/keychars/focal-touchscreen.kcm

# Keyhandler
PRODUCT_PACKAGES += \
    CMActions \
    com.cyanogenmod.keyhandler

# Light
PRODUCT_PACKAGES += \
    lights.msm8916

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.bt.sh \
    init.qcom.opengles.sh \
    init.qcom.power.sh \
    init.qcom.factory.sh

PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.sensors.rc \
    init.qcom.power.rc \
    init.qcom.usb.rc \
    init.recovery.qcom.rc \
    ueventd.qcom.rc

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_asus

# Releasetools
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/releasetools/init.asus.sh:install/bin/init.asus.sh

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libxml2

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal/init.thermal_conf.sh:system/etc/init.thermal_conf.sh \
    $(LOCAL_PATH)/thermal/thermal-engine-8916.conf:system/etc/thermal-engine-8916.conf \
    $(LOCAL_PATH)/thermal/thermald-disabled-mode.conf:system/etc/thermald-disabled-mode.conf \
    $(LOCAL_PATH)/thermal/thermald-ultimate-mode.conf:system/etc/thermald-ultimate-mode.conf

# Voice recognition
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9306.xml:system/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

# WCNSS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_wlan_dictionary.dat:system/etc/firmware/wlan/prima/WCNSS_wlan_dictionary.dat \
    $(LOCAL_PATH)/wifi/COUNTRY:system/etc/firmware/wlan/prima/COUNTRY \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wifi/xtwifi.conf:system/etc/xtwifi.conf

PRODUCT_PACKAGES += \
    wcnss_service

# Wifi
PRODUCT_PACKAGES += \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwcnss_qmi \
    libwpa_client

PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd_default.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf
