cask 'hamsket' do
  version '0.6.0'
  sha256 '7019bc69f6414602f7202422f2d7d579389dfe27939dcf2ea710e86d8eed199d'

  url "https://github.com/TheGoddessInari/hamsket/releases/download/nightly/Hamsket-#{version}.dmg"
  appcast 'https://github.com/TheGoddessInari/hamsket/releases.atom'
  name 'Hamsket'
  homepage 'https://github.com/TheGoddessInari/hamsket'

  app 'Hamsket.app'

  zap trash: [
               '~/Library/Application Support/CrashReporter/Rambox Helper_*.plist',
               '~/Library/Application Support/CrashReporter/Rambox_*.plist',
               '~/Library/Application Support/Rambox',
               '~/Library/Caches/com.grupovrs.ramboxce',
               '~/Library/Caches/com.grupovrs.ramboxce.ShipIt',
               '~/Library/Caches/com.saenzramiro.rambox',
               '~/Library/Logs/Rambox',
               '~/Library/Preferences/ByHost/com.grupovrs.ramboxce.ShipIt.*.plist',
               '~/Library/Preferences/com.grupovrs.ramboxce.helper.plist',
               '~/Library/Preferences/com.grupovrs.ramboxce.plist',
               '~/Library/Preferences/com.saenzramiro.rambox.helper.plist',
               '~/Library/Preferences/com.saenzramiro.rambox.plist',
               '~/Library/Saved Application State/com.grupovrs.ramboxce.savedState',
               '~/Library/Saved Application State/com.saenzramiro.rambox.savedState',
               '~/Library/WebKit/com.saenzramiro.rambox',
               '~/Library/Application Support/Hamsket',
               '~/Library/Saved Application State/com.thegoddessinari.hamsket.savedState',
             ]
end
