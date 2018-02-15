cask 'vivaldi-snapshot' do
  version '1.15.1099.3'
  sha256 '790356fcad6bedd36c7448e3b57c6241b5ea541e9039ed8b19fc31a3697e0b79'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '5e743ed50161def8f93d72b80f2fde84629683b091273fac6c2c22d6fa85f9a7'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
