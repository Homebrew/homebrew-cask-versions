cask 'sublime-text3' do
  version '3083'
  sha256 'fe6dd8d8192fdb01988f99289e5bc1d9a4e66cf67548e144002051c23369a5ff'

  # rackcdn.com is the official download host per the vendor homepage
  url "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          checkpoint: '835ddaeecd771bdd6b2869e8d61a58a5e0c37d36ffadbfef91ce6d3c8462843d'
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
