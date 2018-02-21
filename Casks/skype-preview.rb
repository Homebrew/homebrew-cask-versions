cask 'skype-preview' do
  version '8.16.76.8'
  sha256 'c602076cd87b1ccf3f0e1961f30e94913341911561d118d6c1a1d3f84780be5b'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
