cask 'vivaldi-snapshot' do
  version '1.2.490.27'
  sha256 '9c204a13a2a4609dde56d19f11dec4b2fdf64285369a415fa978b2cd6f277660'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'b58fe186dd414a2f2470235bd1fb89d1e8e7fa151799f9251522206b50dbe5ac'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
