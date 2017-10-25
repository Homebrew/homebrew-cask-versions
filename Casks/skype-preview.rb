cask 'skype-preview' do
  version '8.9.76.64297'
  sha256 'db0fde68ea1a8c3b45783135d4b5deece8928bcce6ce2adbafc8755cf149ef41'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
