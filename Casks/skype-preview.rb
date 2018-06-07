cask 'skype-preview' do
  version '8.24.76.1'
  sha256 'e02b9997c6bbb45bc657c0349900defbe7d9ac631e3b057289a080ba6685f92a'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
