cask 'vivaldi-snapshot' do
  version '1.8.770.40'
  sha256 '0bf31e8f1a4c3176fa2b7664a919c7ebc76bf0b1f9ae1a95429cfc951b065292'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '306e61c696f5fff61497f58c48feef83e61ed0eb514cfbbf94876ad5d112aa8c'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
