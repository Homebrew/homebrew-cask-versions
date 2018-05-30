cask 'vivaldi-snapshot' do
  version '1.16.1195.3'
  sha256 '758d4d57e19433c852d882be30f6671bbf516a75cd6b391434878e56381b9112'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '2e0c9131d6f6311a07966d30bb0ba3408727b4ff88255cfc3f2714e95391698d'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
