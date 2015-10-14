cask :v1 => 'appcode-eap' do
  version '143.116.10'
  sha256 '11054ba3450d8acb271bde9aca292547d32c8abdce4e99f2509f6f3eb19701fc'

  url "https://download.jetbrains.com/objc/AppCode-#{version}-custom-jdk-bundled.dmg"
  name 'AppCode'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  app 'AppCode EAP.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.AppCode-EAP.plist',
                  '~/Library/Preferences/AppCode33',
                  '~/Library/Application Support/AppCode33',
                  '~/Library/Caches/AppCode33',
                  '~/Library/Logs/AppCode33',
                 ]

  conflicts_with :cask => [
                           'appcode',
                           'appcode-bundled-jdk',
                          ]
end
