To recovery build in omni sources

sudo apt install git axel -y
git clone https://github.com/akhilnarang/scripts
cd scripts
sudo bash setup/android_build_env.sh
sudo bash setup/install_android_sdk.bash
cd ~
mkdir TWRP6
cd TWRP6
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-6.0
repo sync
git clone https://github.com/oddmsz/tele2-midi-lte.git -b master device/Tele2/Tele2_Midi_LTE
. build/envsetup.sh
lunch omni_Tele2_Midi_LTE
make -j2 recoveryimage
