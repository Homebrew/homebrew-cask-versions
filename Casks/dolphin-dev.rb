cask 'dolphin-dev' do
  version '5.0-10758'
  sha256 'dd93381066fb254b27ba97d284f07d13bdc522aa8c85516029c18a70fac276e7'

  url "https://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  appcast 'https://github.com/dolphin-emu/dolphin/releases.atom'
  name 'dolphin-dev'
  homepage 'https://dolphin-emu.org/'

  conflicts_with cask: 'dolphin'

  app 'Dolphin.app'
end
