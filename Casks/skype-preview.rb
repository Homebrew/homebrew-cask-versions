cask 'skype-preview' do
  version '8.25.76.3'
  sha256 'f62d918e82b77d7b6b0111decb049a1a49dc4d4a2b9ca6aafdd59f97776ecb47'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
