cask 'vivaldi-snapshot' do
  version '1.5.627.3'
  sha256 '9fbb4e30d8f002cf5e841ab7cb6825b6ba34e695775f41a59541982882c24bf2'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'b12bd860f160dea522d137e0a6307c5d25456e8afcac384e5c39025adc3e4531'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
