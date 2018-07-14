cask 'dolphin-dev' do
  version '5.0-8449'
  sha256 '121091f76e947f2fa484e5dcf0d9289490fa8dd5d8e4ee45bc809e5d88fc9093'

  url "https://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  appcast 'https://github.com/dolphin-emu/dolphin/releases.atom'
  name 'dolphin-dev'
  homepage 'https://dolphin-emu.org/'

  conflicts_with cask: 'dolphin'

  app 'Dolphin.app'
end
