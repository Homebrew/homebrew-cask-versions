cask 'skype-preview' do
  version '8.9.76.62644'
  sha256 '4bc10dd391f093b76585669389d953e70fff65c15e1b999591f6779e0e627cf1'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  conflicts_with cask: 'skype'

  app 'Skype.app'
end
