cask 'vivaldi-snapshot' do
  version '1.14.1064.3'
  sha256 '9f87d8985142f368722344f87befc1993b97a30ddc33e35304953af432e14d5f'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'cd99afaedda493ad199c4c1c319073c0fc44a06d69dfa35408315dca77ea390b'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
