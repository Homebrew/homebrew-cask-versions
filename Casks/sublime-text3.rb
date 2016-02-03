cask 'sublime-text3' do
  version '3100'
  sha256 '2612f254f7ba055129309e2865d979aeb09e84ee6ace889e4a94e79b978f2af9'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
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
