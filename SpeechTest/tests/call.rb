require 'appium_lib'

# Set the environment variables:
#   SAUCE_USERNAME = your-sauce-username
#   SAUCE_ACCESS_KEY = your-sauce-key

desired_caps = {
     caps:       {
       appiumVersion:    '1.7.1',
       platformName:     'Android',
       platformVersion:  '7.0',
       appPackage:       'com.android.dialer',
       appActivity:      'com.android.dialer.DialtactsActivity',
       deviceName:       '0030524229',
       autoGrantPermissions:  true,
       noReset:  true
       
     }
   }

driver = Appium::Driver.new(desired_caps,true)
driver.start_driver

sleep 10

#driver.find_element(:xpath, '//android.widget.ImageView[@content-desc="Histórico de chamadas"]').click

#Botão de Teclado Numérico
driver.find_element(:id, 'floating_action_button').click

#Botões numéricos
driver.find_element(:id, 'one').click
driver.find_element(:id, 'zero').click
driver.find_element(:id, 'six').click
driver.find_element(:id, 'two').click
driver.find_element(:id, 'one').click

sleep 3

#Botão de Chamada
driver.find_element(:id, 'dialpad_floating_action_button_container').click

sleep 7

#botão de encerrar chamada
driver.find_element(:id, 'com.android.dialer:id/floating_end_call_action_button').click

sleep 2

driver.driver_quit