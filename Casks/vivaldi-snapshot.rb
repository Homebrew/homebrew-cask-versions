cask 'vivaldi-snapshot' do
  version '1.13.1008.14'
  sha256 '73985038301a079e165f7f42dae79b2856befab3a8f7f834bf1836295cd0fcdc'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '8a7a55e32efe774e4811749220e57ee7ce8afcf1472587b084cdad44dbbf461a'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
