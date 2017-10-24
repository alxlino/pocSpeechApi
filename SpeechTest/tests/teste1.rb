system "adb -s '0030524229' shell am start -a android.intent.action.CALL -d tel:'10621'"
sleep 15
system "adb shell input tap 398 576"
sleep 6
system "adb shell input tap 398 576"
sleep 6
system "adb shell input keyevent KEYCODE_ENDCALL"