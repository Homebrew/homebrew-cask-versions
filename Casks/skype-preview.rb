cask 'skype-preview' do
  version '8.7.76.58287'
  sha256 '844eced07ca3a7a960b267d1a467a278085be5bee02f1cc970d38203c566db60'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-Preview-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  app 'Skype Preview.app'
end
