cask 'skype-preview' do
  version '8.11.76.8'
  sha256 '2d3237b588329fdf7f8753922457170e5d4b18f85c7e41aa5f0e624aaa861352'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
