cask 'vivaldi-snapshot' do
  version '1.15.1147.29'
  sha256 '0e08afb170c71c11df3912583d7d1bfbc9aab83f88a0f8d362f3794016936d32'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '51d86a98a147acdee0b77bbd2666a618a1d0c4fda012d8987812b45b355df00d'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
