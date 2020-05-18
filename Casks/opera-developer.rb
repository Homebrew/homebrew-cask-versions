cask 'opera-developer' do
  version '70.0.3693.0'
  sha256 '69eabe2aa9ec340f401d910552c3d829629a1ef2bc4dd983945391d7a6ca6b4e'

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
