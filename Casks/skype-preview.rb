cask 'skype-preview' do
  version '8.33.76.40'
  sha256 'ac3ddedf4dc7a5adbc4453386ef63ca707e049f062fbcea4b001d3e795a717d9'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
