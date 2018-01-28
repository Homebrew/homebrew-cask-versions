cask 'skype-preview' do
  version '8.15.76.1'
  sha256 '003a0f3bbc1a2c8cdb2995c8586c439fa0174b6a662806bd07ceec04f082e071'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
