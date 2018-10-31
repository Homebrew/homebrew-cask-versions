cask 'kodi-development' do
  version '18.0-Leia_beta4'
  sha256 '476c5baeafaf47be367114a5708e01765da68e7329fa05dcb99100d6cd0de251'

  url "https://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
