cask 'vivaldi-snapshot' do
  version '1.7.705.3'
  sha256 'dcd1c5a429ee467ba3def0a11650d0fcd25f9f05af81359280659899c453596d'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'f252d7d33fe9f677eb60d66deaf229b007b9bc192e6e729799f5ed9283ecd428'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
