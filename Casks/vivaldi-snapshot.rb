cask 'vivaldi-snapshot' do
  version '1.16.1221.3'
  sha256 '22a18c70f18721362dc3cf94eaa8ae71f14c276c7e2531fdb05a94075f7c9db7'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
