cask 'sublime-text-dev' do
  version '3159'
  sha256 '9f60c2bc46c580e49367185b3fdcd0ecc72668c32081ea49744e3153bc527030'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/dev/appcast_osx.xml',
          checkpoint: 'f69054d48b633247beaaa069cce08bc0538349623608bdf8072cb1dc8e52518c'
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
