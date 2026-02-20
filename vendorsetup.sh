#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2021-2025 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="bogota"

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w \"$FDEVICE\")
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w \"$FDEVICE\")
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    # export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk-v28.1.zip
    export FOX_VIRTUAL_AB_DEVICE=1 #If this is set, some other relevant variables are enabled automatically (eg, "FOX_AB_DEVICE" "FOX_VANILLA_BUILD", etc)
    # export FOX_AB_DEVICE=1
	# export FOX_VANILLA_BUILD=1
   	export TW_DEFAULT_LANGUAGE="en"
	export ALLOW_MISSING_DEPENDENCIES=true
	export LC_ALL="C"
	export OF_TWRP_COMPATIBILITY_MODE=1
	export OF_SKIP_FBE_DECRYPTION_SDKVERSION=31
	export FOX_AB_DEVICE=1
	export FOX_VIRTUAL_AB_DEVICE=1
	export USE_CCACHE=1
	export CCACHE_EXEC=/usr/bin/ccache
	ccache -M 50G
	export OF_FORCE_PREBUILT_KERNEL=1
	export OF_USE_LZMA_COMPRESSION=1
	export FOX_DRASTIC_SIZE_REDUCTION=1
	export FOX_DISABLE_UPDATEZIP=1
	# export FOX_ENABLE_APP_MANAGER=1
	export FOX_MAINTAINER_PATCH_VERSION="bogatyr"
	export FOX_MAINTAINER="bogatyr"
	export OF_SCREEN_H=2400
	export OF_STATUS_H=144
	export OF_STATUS_INDENT_LEFT=48
	export OF_ALLOW_DISABLE_NAVBAR=0
	export FOX_USE_NANO_EDITOR=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_LZ4_BINARY=1
	export FOX_USE_ZSTD_BINARY=1
	export FOX_USE_XZ_UTILS=1
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_DELETE_AROMAFM=1
	export OF_FLASHLIGHT_ENABLE=0
	export OF_ENABLE_ALL_PARTITION_TOOLS=1
	export OF_NO_REFLASH_CURRENT_ORANGEFOX=1
	export FOX_VENDOR_BOOT_RECOVERY=1 # EXPERIMENTAL!! - If this variable is enabled, the following features will automatically be removed: Changing the OrangeFox splash image/logo * "Flash Current OrangeFox" * "Reflash OrangeFox after flashing a ROM"
	export OF_OPTIONS_LIST_NUM=6
	export UNMOUNT_SDCARDS_BEFORE_REBOOT=1
	export FOX_USE_UPDATED_MAGISKBOOT=1 # needed for newer devices, can cause issues with changing splash screen
	export OF_USE_AIDL_BOOT_CONTROL=1
	# export OF_QUICK_BACKUP_LIST="/data;/storage;/persist;"
	# export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
	# export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
        [ "$FOX_BUILD_TYPE" = "Stable" ] && export OF_ADVANCED_SECURITY=0;
else
	if [ -z "$FOX_BUILD_DEVICE" -a -z "$BASH_SOURCE" ]; then
		echo "I: This script requires bash. Not processing the $FDEVICE $(basename $0)"
	fi
fi
#
