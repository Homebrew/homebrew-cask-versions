cask 'appcode-eap' do
  version '163.5219.17'
  sha256 'e9b35a5ebcfa436c5f7a282f3da88ab8b5ebdecad992dd4539d3605c6afcdec3'

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
