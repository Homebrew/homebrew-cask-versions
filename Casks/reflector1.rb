cask :v1 => 'reflector1' do
  version :latest
  sha256 :no_check

  url 'http://download.airsquirrels.com/Reflector/Mac/Reflector.dmg'
  appcast 'https://updates.airsquirrels.com/Reflector/Mac/Reflector.xml'
  name 'Reflector'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  app 'Reflector.app'
end
