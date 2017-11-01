cask 'sublime-text-dev' do
  version '3153'
  sha256 '008f6160a6aa569cdbe5c3b78a88657c5800231b9f5bb79f996d863aeae945fd'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/dev/appcast_osx.xml',
          checkpoint: '6cf38d46df754ed6a7f017170dd49f32cd5d0c02cd5031ef423c7d16f4cb1378'
  name 'Sublime Text'
  homepage 'https://www.sublimetext.com/3dev'

  conflicts_with cask: 'caskroom/versions/sublime-text3'

  app 'Sublime Text.app'
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: 'com.sublimetext.3'

  zap delete: [
                '~/Library/Caches/com.sublimetext.3',
                '~/Library/Saved Application State/com.sublimetext.3.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Sublime Text 3',
                '~/Library/Preferences/com.sublimetext.3.plist',
              ]
end
