cask 'opera-developer' do
  version '69.0.3660.0'
  sha256 'da0fa07ddc8107e6554b345958dc510a8c1abcdf60a35837b2190cae4eea9a76'

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
