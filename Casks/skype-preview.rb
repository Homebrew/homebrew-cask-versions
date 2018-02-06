cask 'skype-preview' do
  version '8.15.76.7'
  sha256 'a53a4aa3877f217c8d0974211d26ff7b4841cb35d2a3df196639d71d3622fdda'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
