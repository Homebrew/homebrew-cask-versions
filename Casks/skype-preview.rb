cask 'skype-preview' do
  version '8.5.76.55323'
  sha256 'e4f170ef60f4e82e0e0230279a7cbae8178ebf9343df0cdc3c0703139b3103da'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-Preview-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  app 'Skype Preview.app'
end
