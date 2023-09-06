20230717:
 - fix build FAILED
 - it can boot with eng
 - bugs:
   - sound
   - vibrator
   - DC
 
 20230718:
 - switch blob to F.09
 - work: 
   - audio, 
   - camera, 
   - volte, 
   - DC, 
   - switch refreshrate, 
   - wifi, 
   - data-network, 
   - dual-sim
   - SELinux is enforcing
   - CallRecorder
 - Import Display eye protection data from F.09
 - Import Widevine firmware F.09
 - bugs:
   - IMEI
   - AUX camera
   - autobrightness

20230721:
 - remove camera2
 - Add Aperture camera
 - Use libcamera_metadata_shim for unlocking cameras
 - bugs:
   - IMEI
   - AUX camera
   - autobrightness

20230722:
 - repo sync upstream
 - stop patching libui.so
 - Enable burn-in protection
 - set captive-portal for China
 - Add nosdcard to product charateristics
 - Remove vendor RenderScript implementation
 - Add stmvl53l1 TOF sensor support
 - Add missing OPlus Nama camera blobs 
 - bugs:
   - IMEI
   - AUX camera
   - autobrightness

20230821:
 - overlay useless camera IDs
 - fix IMEI display in enforcing
 - build lineage health hal
 - bugs:
   - Powershare
   - wireless charge

20230824:
 - kang display cutout from lemonades to adapt status bar
 - bugs:
   - otg switch
   - PowerShare
   - wireless charge

20230825:
 - build with user
 - signed with release-kay
 - Add GAPPS
 - bugs:
   - otg switch
   - PowerShare
   - wireless charge
   - Front camera

20230901:
  - PixelExperience bringup
  - remove QTI thermal
  - reserve 100MiB size in each sub-partition for super
  - Add prebuilt kernel, dtb, dtbo flags
  - fix some PE sepolicy 
  
20230902:
  - remove persist.bluetooth.a2dp_offload.cap
  - Optimize native executables for Cortex-A76 CPU
  - Move VOOC-related writes back to init
  - Disable serial console notification
  - Use stop instead of setprop for console
  - fix active wlan interfaces

20230904:
  - build with oss kernel & dtbs
  - Silence FastChargingPreferenceController 
  - switch dalvik-heap device configs for 8 GiB devices 
  - fix some selinux denials
  - bugs:
    - fast charge in shutdown
