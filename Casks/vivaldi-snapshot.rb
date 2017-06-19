cask 'vivaldi-snapshot' do
  version '1.11.880.3'
  sha256 'ca5b683f2600642430016ca1b116a515223310f4452acb56a337adf879991cd8'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '1a1ba5f2089b060cc7cdc3594afd6bc5c43f903670ac85d023fc67056c1a989d'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
