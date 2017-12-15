cask 'vivaldi-snapshot' do
  version '1.14.1042.3'
  sha256 '77afa3c48f723dcd2a3dd0b2ec7d7d85cc703633705de93fb7e85c20f470999e'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '7301d645b61305bff40fb2e7f776e7da749124117654f9e7840722310b5a6775'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
