cask 'sublime-text-dev' do
  version '3147'
  sha256 '0a9b4da7d19b7b24c1552228441ffd53b82ae3ecbc8f18ba3e694e19cfa8c3cd'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/dev/appcast_osx.xml',
          checkpoint: 'c1c4f4c0ab0d97f71bb577b1050d5b27bf171335592b3a5131a8dfba4f511a84'
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
