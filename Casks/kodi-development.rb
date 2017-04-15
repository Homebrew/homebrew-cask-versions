cask 'kodi-development' do
  version '20170410-7f7f7e8'
  sha256 '5fa8d2861514fa9e9f6f7870b5490d393bdc0abf368feac31a7224543221977d'

  url "http://mirrors.kodi.tv/nightlies/osx/x86_64/Krypton/kodi-#{version}-Krypton-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
