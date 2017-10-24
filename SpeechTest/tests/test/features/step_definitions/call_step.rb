#encoding: utf-8

  Quando("faco a ligacao para o {string}") do |numTelefone|
    system "adb -s '0030524229' shell am start -a android.intent.action.CALL -d tel:'10621'"
    sleep 14
  end
  
  Quando("habilito e desabilito o microfone") do
    system "adb shell input tap 398 576"
    sleep 7
    system "adb shell input tap 398 576"
    sleep 7
  end
  
  Então("desligo a ligacao") do
    system "adb shell input keyevent KEYCODE_ENDCALL"
  end