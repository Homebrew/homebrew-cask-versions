cask 'vivaldi-snapshot' do
  version '1.9.818.29'
  sha256 '3b94d5443f81091f149ad2d03a72477647c7f6266fcdfe48af5d1a5057cabd53'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '789a008b7bc3b281a96ac514762dcbdf359368da175164af4504d0af99917d6f'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
