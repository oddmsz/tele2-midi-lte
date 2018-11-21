To recovery build in omni sources

mkdir TWRP6
cd TWRP6
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-6.0
repo sync
export USE_NINJA=false
. build/envsetup.sh
lunch omni_midi_lte
#make -j2 recoveryimage
mka recoveryimage
