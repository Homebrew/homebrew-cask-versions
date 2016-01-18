cask 'sublime-text-dev' do
  version '3095'
  sha256 'f03b7af33cc20dbff863b35016f77803239168e2bd3691b756a3e4729cb5e5c2'

  # rackcdn.com is the official download host per the vendor homepage
  url "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/dev/appcast_osx.xml',
          checkpoint: 'c850ebbe33c8dc1a435626abb68777910ff77cd6428136c264cca97b281f40b3'
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
