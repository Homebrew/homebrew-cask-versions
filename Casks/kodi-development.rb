cask 'kodi-development' do
  version '18.0-Leia_beta2'
  sha256 '52756359e205411fa5496f91f5cc36efb4dcb8fe691823f1b5d103d216eb15eb'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
