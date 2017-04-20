cask 'kodi-development' do
  version '20170418-5066f8f'
  sha256 '989c6373ec99089d5a779411b64ecba652bff0a5ce8ee7ac20fc0c1445c31e7e'

  url "http://mirrors.kodi.tv/nightlies/osx/x86_64/Krypton/kodi-#{version}-Krypton-x86_64.dmg"
  name 'Kodi-Development'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
