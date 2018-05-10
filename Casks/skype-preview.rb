cask 'skype-preview' do
  version '8.21.76.6'
  sha256 'fd0dc9b464c662433db20d8a08c550a58786bba50a89f3792af60cd01ba809ed'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
