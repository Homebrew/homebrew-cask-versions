cask 'sublime-text-dev' do
  version '3125'
  sha256 'c99560473ab63291596b386789b8abd539435b1269a33ae4a5b533da36ecbdaf'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/dev/appcast_osx.xml',
          checkpoint: '37a168bb4f145c484d66ec49c91790ba57cf8952ec4ae093d207eeb6aeb2bb93'
  name 'Sublime Text'
  homepage 'https://www.sublimetext.com/3dev'
  license :closed

  conflicts_with cask: 'caskroom/versions/sublime-text3'

  app 'Sublime Text.app'
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

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
