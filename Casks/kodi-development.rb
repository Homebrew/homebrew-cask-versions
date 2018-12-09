cask 'kodi-development' do
  version '18.0-Leia_rc2'
  sha256 '1fa307e5abb90f49cdce0bae8f061ebab3d867d117aec871ecdde1a809fe9b93'

  url "https://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
