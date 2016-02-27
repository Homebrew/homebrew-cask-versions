cask 'vivaldi-snapshot' do
  version '1.0.403.17'
  sha256 '0b5ba8fdb0ef8b9b5cbfc65e2f5e5f48bec5bfaf432ddbc1f368688261629c44'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '15894f01f752c138d51b4b4352e09edd70c2328f67733775bde4d6a188145df3'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
