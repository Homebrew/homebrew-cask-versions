cask 'sublime-text-dev' do
  version '3113'
  sha256 'e9458769440d582f0a8bc3dd686096f095be9e5b4ca8ff5bee2ec53271111f84'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/dev/appcast_osx.xml',
          checkpoint: '63695de8650790a4a0fd0bf748f73d5d77dc8c5a19d337023edc18265060f717'
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
