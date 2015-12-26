cask 'airparrot1' do
  version :latest
  sha256 :no_check

  url 'https://download.airsquirrels.com/AirParrot/Mac/AirParrot.dmg'
  name 'AirParrot'
  appcast 'http://airparrot.com/updates/AirParrot.xml',
          :sha256 => '7a430d7c46336b482cd652830d4ab035591b61597b2dc2268fe8e13fd2f6b379'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot.app'
end
