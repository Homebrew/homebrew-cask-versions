cask 'skype-preview' do
  version '8.7.76.59440'
  sha256 '269edb273e643518fdf227bfdad2e2960486d6aa41038683c3132806d361ee48'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-Preview-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  app 'Skype Preview.app'
end
