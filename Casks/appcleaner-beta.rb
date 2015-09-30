cask :v1 => 'appcleaner-beta' do
  version '3.0b2'
  sha256 'e04062e2ba09972339948345b671511a4651532d4fdd376f4f8c077f7e3d55f1'

  url "http://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  name 'AppCleaner'
  appcast 'http://www.freemacsoft.net/appcleaner/Updates.xml',
          :sha256 => '17390106c7b68aa0da08f0a5ef1cb6b53d595bcff2e9cb45a94f4f136be2b22d'
  homepage 'http://www.freemacsoft.net/appcleaner/'
  license :gratis

  app 'AppCleaner.app'

  zap :delete => [
                  '~/Library/Caches/com.freemacsoft.AppCleaner',
                  '~/Library/Preferences/com.freemacsoft.AppCleaner.plist',
                 ]
end
