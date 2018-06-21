cask 'skype-preview' do
  version '8.25.76.1'
  sha256 '307d51c9087b08ce123d133ace9a1f121cae2140ad193d2c03a0f36890cec9c3'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
