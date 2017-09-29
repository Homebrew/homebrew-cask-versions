cask 'skype-preview' do
  version '8.8.76.60544'
  sha256 '48beb93785716693ca542bfcd2c0fcaa3551b5a3a24717d56dcb794ea6c2db9f'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  conflicts_with cask: 'skype'

  app 'Skype.app'
end
