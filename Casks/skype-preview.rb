cask 'skype-preview' do
  version '8.8.76.61628'
  sha256 '95038d4e3a935e1acbecd8ce4f2c004458b5cc4b3538d00e8310401b103918da'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  conflicts_with cask: 'skype'

  app 'Skype.app'
end
