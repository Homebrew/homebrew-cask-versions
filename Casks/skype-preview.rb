cask 'skype-preview' do
  version '8.12.76.7'
  sha256 '038b1162d970d96d0403894c0a1a24f8258abcdbd12cb5a192f1ea68416f17fe'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
