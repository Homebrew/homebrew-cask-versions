cask 'airparrot1' do
  version :latest
  sha256 :no_check

  url 'http://download.airsquirrels.com/AirParrot/Mac/AirParrot.dmg'
  name 'AirParrot'
  appcast 'http://airparrot.com/updates/AirParrot.xml'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot.app'
end
