cask 'skype-preview' do
  version '8.10.76.2'
  sha256 'b825c6d6b40487bb4dff67241b42794b406ca4488a71e4c4abe845efc420b69c'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
