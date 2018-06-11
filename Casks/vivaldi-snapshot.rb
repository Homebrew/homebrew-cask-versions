cask 'vivaldi-snapshot' do
  version '1.16.1206.3'
  sha256 '258ffd18fdd524bc441cc920b6266e52298f1d1837673ef925e01f2ebab5b4ec'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '99db96697412f8c1e6876192503e021bdf11c06a74b11840ac72ee9475a8c87d'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
