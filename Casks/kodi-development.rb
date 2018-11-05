cask 'kodi-development' do
  version '18.0-Leia_beta5'
  sha256 '55e305b7d451fe3e1710fe61a6fb283c79b2a23ed572d9957a99dcb8a823e567'

  url "https://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
