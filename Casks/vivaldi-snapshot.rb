cask 'vivaldi-snapshot' do
  version '1.3.551.21'
  sha256 '387399a48f9d38640f54b177f2632254e62a7e757658165cbc3d9bb27ca7ab26'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'b6ab1aa1216263ff273d7bc7600b169996deeca1e55f2370417055c0428a16cc'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
