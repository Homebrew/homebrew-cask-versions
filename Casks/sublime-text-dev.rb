cask 'sublime-text-dev' do
  version '3163'
  sha256 'a9ede16a84416a42469fc27161cc295aa907af3f0c87bd2fedbaa906dbb76f2d'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/dev/appcast_osx.xml',
          checkpoint: '5b95e09400620e69b0245ae2c41bf5f9c0cb644f69d9e007c86d9f57fee46f68'
  name 'Sublime Text'
  homepage 'https://www.sublimetext.com/3dev'

  conflicts_with cask: 'sublime-text'

  app 'Sublime Text.app'
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: 'com.sublimetext.3'

  zap trash: [
               '~/Library/Application Support/Sublime Text 3',
               '~/Library/Caches/com.sublimetext.3',
               '~/Library/Preferences/com.sublimetext.3.plist',
               '~/Library/Saved Application State/com.sublimetext.3.savedState',
             ]
end
