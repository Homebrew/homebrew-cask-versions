cask 'sublime-text3' do
  version '3103'
  sha256 '7eef51e1a344f238de2f69bb9f888e46ed9083133616249f31189db958f321b5'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          checkpoint: 'f3b629626d51dd0f85bc8fc8f7592f3a3ae6e3ff4b5048638a9dbee9b533fbc1'
  name 'Sublime Text'
  homepage 'https://www.sublimetext.com/3'
  license :closed

  conflicts_with cask: 'caskroom/versions/sublime-text-dev'

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'

  uninstall quit: 'com.sublimetext.3'

  zap delete: [
                '~/Library/Application Support/Sublime Text 3',
                '~/Library/Caches/com.sublimetext.3',
                '~/Library/Preferences/com.sublimetext.3.plist',
                '~/Library/Saved Application State/com.sublimetext.3.savedState',
              ]

  caveats do
    files_in_usr_local
  end
end
