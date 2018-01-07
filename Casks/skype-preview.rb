cask 'skype-preview' do
  version '8.13.76.8'
  sha256 '25f5f582f851e7e4634e7f1e9d25d6ac5afa480cd18d66352825b4d87e926191'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
