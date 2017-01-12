cask 'vivaldi-snapshot' do
  version '1.7.721.3'
  sha256 '7c07a3e684e0676132d19991908095e5b2a7b4ba227760966670f5066da47b0d'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'c0ccddbd233f58355e1c9dc19982111163e8e96226d118cbc3efb1ff2fa43f5e'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
