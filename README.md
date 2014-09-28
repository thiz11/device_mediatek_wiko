android_device_wiko_wiko
=========================


initialize repo with cm9 repository:
	
	repo init -u git://github.com/CyanogenMod/android.git -b ics

Now retrieve Wiko PEAX repositories (Should be using local_manifests.xml instead):

	for folder in device kernel vendor;
	do
		mkdir -p $folder/mediatek/wiko;
		git clone "http://github.com/skritchz/android_"$folder"_wiko_wiko.git" -b ics $folder/mediatek/wiko;
	done


Now prepare to build

	. build/envsetup.sh
	brunch wiko

And there we are :). Now debugging time ...
