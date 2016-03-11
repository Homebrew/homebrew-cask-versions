cask 'vivaldi-snapshot' do
  version '1.0.418.3'
  sha256 'da107b065a09e8b918275ec4a8e13ce59c6ee340e2350dca9240d371f01093e9'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '3a19ea1b7f00fab6a2d3b84b46f358311f1f1b8694b7b34233706faf3fdeff0e'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
