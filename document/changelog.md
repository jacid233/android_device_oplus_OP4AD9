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