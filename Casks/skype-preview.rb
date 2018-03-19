cask 'skype-preview' do
  version '8.18.76.7'
  sha256 'db5ab9570ce55adda52cb78b5ca8d783c1bf564eb3c2949db87add019b9745b4'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
