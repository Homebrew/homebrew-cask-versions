cask 'kodi-development' do
  version '18.0-Leia_rc4'
  sha256 'fbc0e1ad2493e54c91a26e73f59628f6755e283394cf0046651e43f768a457ed'

  url "https://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
