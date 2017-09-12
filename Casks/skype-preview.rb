cask 'skype-preview' do
  version '8.6.76.57286'
  sha256 '6db3fcbcb389690b7227c171f983dddc0b7f2a54f6ee55cb851210d322a785a6'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-Preview-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  app 'Skype Preview.app'
end
