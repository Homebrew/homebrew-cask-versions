cask 'kodi-development' do
  version '17.4-Krypton_rc1'
  sha256 'acae9335463d4e67aef3455ee7642a025ec1029e44a16222344e1d98d5e58976'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
