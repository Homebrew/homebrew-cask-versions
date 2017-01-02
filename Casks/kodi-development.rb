cask 'kodi-development' do
  version '17.0-Krypton_rc2'
  sha256 'e7ad26409e822fe9c7514dadd98e5804e521ec3c195f38a926922663ee65a088'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
