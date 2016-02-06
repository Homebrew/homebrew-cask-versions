cask 'sublime-text-dev' do
  version '3101'
  sha256 '590004d52b05525e32e1e0371b1aa49aa1c8e8173fa5f1d9cd28e4c60a5e8c53'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/dev/appcast_osx.xml',
          checkpoint: '6a0d9015872259ff6d97063ca1157c8a2168b248d099e8b0d5991bdd3a5522d6'
  name 'Sublime Text'
  homepage 'https://www.sublimetext.com/3dev'
  license :closed

  conflicts_with cask: 'caskroom/versions/sublime-text3'

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
