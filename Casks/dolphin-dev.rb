cask 'dolphin-dev' do
  version '5.0-11094'
  sha256 '9f29ae7bc4a2a73e1e11eadcff4444209ad62679ef2d207678c7a08d1e6ac88f'

  url "https://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  appcast 'https://github.com/dolphin-emu/dolphin/releases.atom'
  name 'dolphin-dev'
  homepage 'https://dolphin-emu.org/'

  conflicts_with cask: 'dolphin'

  app 'Dolphin.app'
end
