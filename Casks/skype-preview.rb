cask 'skype-preview' do
  version '8.52.76.29'
  sha256 'c3cd1ce00d8ffd92d0ad7d61fc7d841e1ba39739f3a011bd3f8f0ee7c743a393'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
