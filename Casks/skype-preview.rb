cask 'skype-preview' do
  version '8.29.76.43'
  sha256 'dd45e2e808d9c8262223f3901fb6eab0b10639c4bde01a3e5a4e63b799846ad0'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
