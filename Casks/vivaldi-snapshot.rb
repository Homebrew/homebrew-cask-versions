cask 'vivaldi-snapshot' do
  version '2.0.1296.4'
  sha256 '1e37e69544bb6a99abcacc9768cd7c7f2798a0ed0f96592bd4adfb1598c17828'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
