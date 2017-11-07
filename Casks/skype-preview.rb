cask 'skype-preview' do
  version '8.10.76.7'
  sha256 'e1eb36d2ee6f276ec3fd71e28056ff0be63d3b1fac057e7285a53bac4d6ba038'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
