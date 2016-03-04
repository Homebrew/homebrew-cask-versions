cask 'vivaldi-snapshot' do
  version '1.0.403.20'
  sha256 'af76d59e1c6e8cf3f5a68aa63d4a2819ab91b32bf0df9590b778c95db371117e'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'd202ffc8b42281460c640e1196ee620ef1de2303ccfa26514d745dbc65f401bc'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
