cask 'vivaldi-snapshot' do
  version '1.16.1211.3'
  sha256 'a73a65da12c4916d821e1fd56b77572af643d33d90477b79fa74c4e62624edce'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
