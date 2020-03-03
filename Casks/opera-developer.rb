cask 'opera-developer' do
  version '68.0.3616.0'
  sha256 'a7691ad2f29d099c716ef8da098935d6e2ade54c4badd8cdcb8cb03e8a381b9a'

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
