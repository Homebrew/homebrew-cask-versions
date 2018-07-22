cask 'skype-preview' do
  version '8.27.76.16'
  sha256 'b0cf3842542f80ed2072b96f75a0fed9a3a856558987519f7011a05a076f124a'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
