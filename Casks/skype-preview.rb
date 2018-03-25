cask 'skype-preview' do
  version '8.19.76.3'
  sha256 'eae42ffff4cad51a266d4cb25ed207a4adad91f959e319a0bc4cc8e07b594682'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
