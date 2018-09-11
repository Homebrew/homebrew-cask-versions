cask 'skype-preview' do
  version '8.30.76.41'
  sha256 '414ecee799ef4adab6a2ba1c26ec7ce1832198f977db3b75a3e81160dcbff8fd'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
