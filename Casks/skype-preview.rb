cask 'skype-preview' do
  version '8.16.76.1'
  sha256 '79b29becc83b1bded27a5fc51a9a9e32cfec15e6d011d51ef3a34df907760c96'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
