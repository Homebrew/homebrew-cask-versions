cask 'skype-preview' do
  version '8.20.76.1'
  sha256 '84eecab93936b3bb628a0f5cc53ad6a1eb5a82e93e7a55167255530b7e109e65'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
