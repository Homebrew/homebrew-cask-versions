cask 'dolphin-dev' do
  version '5.0-7053'
  sha256 '2feeb57e3ad93e072b9e1ee4395842d7849f00981ae4fc2b0c7893475f45dbf7'

  url "https://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  appcast 'https://github.com/dolphin-emu/dolphin/releases.atom'
  name 'dolphin-dev'
  homepage 'https://dolphin-emu.org/'

  conflicts_with cask: 'dolphin'

  app 'Dolphin.app'
end
