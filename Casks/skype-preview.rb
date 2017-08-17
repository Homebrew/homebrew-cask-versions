cask 'skype-preview' do
  version '8.4.76.54035'
  sha256 '61b23c45e3dbcce43d187079edbaf1be0b5e7d0ca633e883aa04ee805bb492ea'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-Preview-#{version}.dmg"
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  app 'Skype Preview.app'
end
