cask 'appcode-eap' do
  version '163.6110.27'
  sha256 '40d7c080eca4273f00d1c651947d26c629034429f0b1a0778da2699d6efa8d41'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode EAP'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'

  conflicts_with cask: 'appcode'

  app 'AppCode 2016.3 EAP.app'

  zap delete: [
                '~/Library/Application Support/AppCode2016.3',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jetbrains.appcode-eap.sfl',
                '~/Library/Caches/AppCode2016.3',
                '~/Library/Logs/AppCode2016.3',
                '~/Library/Preferences/AppCode2016.3',
                '~/Library/Preferences/com.jetbrains.AppCode-EAP.plist',
                '~/Library/Saved Application State/com.jetbrains.AppCode-EAP.savedState',
              ]
end
