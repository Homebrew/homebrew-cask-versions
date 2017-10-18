cask 'sublime-text-dev' do
  version '3150'
  sha256 '5668be7f1ae78882d38ac60c95d499658516ea66e7d7436869508545f2cff400'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/dev/appcast_osx.xml',
          checkpoint: '81e9d0519cd2f54ab47ea14fa7f009748633b7533ef4c0f26feb47e12a6837aa'
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
