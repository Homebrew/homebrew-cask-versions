cask 'ian4hu-clipy-beta' do
  version '1.2.9.beta0'
  sha256 '89a8e4a13ee669138ef0425db586f0921f9bee813f0a9afaf3b922bc16d0eb4b'

  url "https://github.com/ian4hu/Clipy/releases/download/#{version}/Clipy.app.zip"
  appcast "https://raw.githubusercontent.com/ian4hu/Clipy/develop/appcast.xml"
  name 'ian4hu/Clipy-beta'
  homepage 'https://github.com/ian4hu/Clipy'

  app 'Clipy.app'

  uninstall quit: 'com.clipy-app.Clipy'

  zap trash: [
               '~/Library/Application Support/Clipy',
               '~/Library/Application Support/com.clipy-app.Clipy',
               '~/Library/Caches/com.clipy-app.Clipy',
               '~/Library/Caches/com.crashlytics.data/com.clipy-app.Clipy',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.clipy-app.Clipy',
               '~/Library/Cookies/com.clipy-app.Clipy.binarycookies',
               '~/Library/Preferences/com.clipy-app.Clipy.plist',
             ]
end
