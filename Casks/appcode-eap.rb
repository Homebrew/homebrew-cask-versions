cask 'appcode-eap' do
  version '2016.3,RC'
  sha256 'fdefc83c44377536bea93df729d1e9833dcee504f3a19f218d178d26b87a66b9'

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}-#{version.after_comma}.dmg"
  name 'AppCode EAP'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'

  conflicts_with cask: 'appcode'

  app "AppCode #{version.before_comma} EAP.app"

  zap delete: [
                "~/Library/Application Support/AppCode#{version.before_comma}",
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jetbrains.appcode-eap.sfl',
                "~/Library/Caches/AppCode#{version.before_comma}",
                "~/Library/Logs/AppCode#{version.before_comma}",
                "~/Library/Preferences/AppCode#{version.before_comma}",
                '~/Library/Preferences/com.jetbrains.AppCode-EAP.plist',
                '~/Library/Saved Application State/com.jetbrains.AppCode-EAP.savedState',
              ]
end
