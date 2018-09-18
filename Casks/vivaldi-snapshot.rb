cask 'vivaldi-snapshot' do
  version '2.0.1307.3'
  sha256 'af7a15265dd96502312f0d735fe9b758b27bed96dd4f964a9c2f58079e21d974'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
