cask 'kodi-development' do
  version '20170514-a5f9821'
  sha256 '97e0d447a7f645d7c19c3020a0fa6a1b0c60c38a7843fb83f28227b8f62a83b4'

  url "http://mirrors.kodi.tv/nightlies/osx/x86_64/Krypton/kodi-#{version}-Krypton-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
