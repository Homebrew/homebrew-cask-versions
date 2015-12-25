cask 'reflector1' do
  version :latest
  sha256 :no_check

  url 'http://download.airsquirrels.com/Reflector/Mac/Reflector.dmg'
  appcast 'https://updates.airsquirrels.com/Reflector/Mac/Reflector.xml',
          :sha256 => 'f863daabda28035fe9bcda3a5789cf407a3c504cecc1f3b01c54995445e6b71f'
  name 'Reflector'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  app 'Reflector.app'
end
