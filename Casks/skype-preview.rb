cask 'skype-preview' do
  version '8.18.76.1'
  sha256 '63174fb5cc37ed5b96c518e330dc8128ef3d49cf29e2378b1e63c288761ef923'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
