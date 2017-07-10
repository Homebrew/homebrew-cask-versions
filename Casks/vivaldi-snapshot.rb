cask 'vivaldi-snapshot' do
  version '1.11.901.3'
  sha256 '85dfc64744a0a465d5c6eccb20e3221f4e2dcab2cc11c3e2444a98870088cc12'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '9f175deac69b45caa340880b44ccb6853d733058a16cfcc6a66749cab91e4031'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
