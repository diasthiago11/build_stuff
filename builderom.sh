rm -rf .repo/local_manifests


# repo init rom
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs
echo ==================
echo Repo init success
echo ==================

# Local manifests
git clone https://github.com/diasthiago11/local_manifest_odessa.git -b los21 .repo/local_manifests
echo ============================
echo Local manifest clone success
echo ============================

# Sync
/opt/crave/resync.sh
echo =============
echo Sync success
echo =============

# Export
export BUILD_USERNAME=Thiago
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=ture 
echo ======= Export Done ======

# Set up build environment
source build/envsetup.sh 

echo ====== Envsetup Done =======

# Lunch                                                                     
riseup odessa userdebug
rise b