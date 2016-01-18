cask 'appcode-eap' do
  version '143.1653.4'
  sha256 'e2f482e38b8c298587240d7baff6aaeda34c948c471db4e25212c4e5792f7add'

  url "https://download.jetbrains.com/objc/AppCode-#{version}-custom-jdk-bundled.dmg"
  name 'AppCode'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  conflicts_with cask: 'appcode'

  app 'AppCode EAP.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.AppCode-EAP.plist',
                '~/Library/Preferences/AppCode33',
                '~/Library/Application Support/AppCode33',
                '~/Library/Caches/AppCode33',
                '~/Library/Logs/AppCode33',
              ]
end
