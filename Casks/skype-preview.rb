cask 'skype-preview' do
  version '8.30.76.22'
  sha256 '164ec5f470aaf1cbbc006a21847d9ce82a57c653d30b5e8f80df301d0c3d7299'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
