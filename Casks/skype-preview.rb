cask 'skype-preview' do
  version '8.22.76.6'
  sha256 '78ba614475815d38a26007cea3b1a2b2312ef61799532263374ce10dff2dd0c6'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
