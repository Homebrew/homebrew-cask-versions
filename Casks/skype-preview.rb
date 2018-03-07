cask 'skype-preview' do
  version '8.17.76.3'
  sha256 '9fceb2ae0f5e02231922b3dc4098836612e8306fa4c16ab9ee924e87ee7663ea'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
