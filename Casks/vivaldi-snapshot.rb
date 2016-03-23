cask 'vivaldi-snapshot' do
  version '1.0.430.3'
  sha256 'd458e4af1d40c409e25f3883a0fd7dd41aaf6379714846799522b33ed80e9a5d'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'c2ea193a88eeb352023fb63c9c2bc77af3abb73619960622937a20422a9fd6a4'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
