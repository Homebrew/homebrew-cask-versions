cask 'vivaldi-snapshot' do
  version '1.5.633.3'
  sha256 '941457f73a9845408a6b3dd6fbfe8fe036956152c0ef25265715cef8deed2939'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'c31fa0959825681f1022b2aa56dde2eaac7c6e766c76d2810ef294c1dcd00b46'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
