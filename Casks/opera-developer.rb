cask 'opera-developer' do
  version '52.0.2845.0'
  sha256 'a210c4dc56960d52b74dbc7496a8c89d336ee22b8c62c8706dcef22cc59e25d2'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'

  zap trash: [
               '~/Library/Application Support/com.operasoftware.OperaDeveloper',
               '~/Library/Caches/com.operasoftware.OperaDeveloper',
               '~/Library/Cookies/com.operasoftware.OperaDeveloper.binarycookies',
               '~/Library/Preferences/com.operasoftware.OperaDeveloper.plist',
               '~/Library/Saved Application State/com.operasoftware.OperaDeveloper.savedState',
             ]
end
