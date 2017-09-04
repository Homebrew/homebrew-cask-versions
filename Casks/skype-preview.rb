cask 'skype-preview' do
  version '8.6.76.56247'
  sha256 '42279e05a0ce063dc2efb85687451cbaca37be6b200369f796d2c130af2240d0'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-Preview-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  app 'Skype Preview.app'
end
