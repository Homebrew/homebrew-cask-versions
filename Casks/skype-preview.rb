cask 'skype-preview' do
  version '8.20.76.8'
  sha256 '3cb334b1c5cefde606b372b556cc0da478cfd7e97e46fcd7cf4f04bc81dad75a'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
