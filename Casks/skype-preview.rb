cask 'skype-preview' do
  version '8.54.76.86'
  sha256 'fe2b6ce038e880072bd38642d20d2475c80124d3a3fb1dba96fdeabafc10d4de'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
