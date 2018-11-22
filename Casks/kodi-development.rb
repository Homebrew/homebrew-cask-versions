cask 'kodi-development' do
  version '18.0-Leia_rc1'
  sha256 'cc1f9de0c4261b52846084244a97cdbbdd9940f28d4b8fd026148a274374a6e7'

  url "https://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
