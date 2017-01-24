cask 'vivaldi-snapshot' do
  version '1.7.735.11'
  sha256 'b30266129ea7496111bafb06ed6408ca50cff404e65a28340c8aee1cca0d1605'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '0f6b53a01a65af7b2349ab4096f4e8ed9a7acc5a6704816b49b5a9acebf6112a'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
