cask 'vivaldi-snapshot' do
  version '1.10.862.6'
  sha256 'a85fb509600d533e8cdf420ea5d6eccc147384c244d8a43e43f542bcdec20b0f'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '08d0d2a168952836c9d691a1e6d1573ab69f55a42ded10543447abf8d42f9a83'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
