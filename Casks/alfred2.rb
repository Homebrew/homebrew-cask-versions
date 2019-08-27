cask 'alfred2' do
  version '2.9_446'
  sha256 '26a99cc0b96a4acee02bbc162ee433d9f1b20518ba8acc9691564b2c3698ed6a'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.zip"
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'

  auto_updates true

  app 'Alfred 2.app'

  uninstall quit: 'com.runningwithcrayons.Alfred-2'

  zap trash: [
               '~/Library/Application Support/Alfred 2',
               '~/Library/Caches/com.runningwithcrayons.Alfred-2',
               '~/Library/Caches/com.runningwithcrayons.Alfred-Preferences',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-2.plist',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist',
               '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState',
             ]
end
