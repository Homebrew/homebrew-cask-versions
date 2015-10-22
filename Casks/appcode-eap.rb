cask :v1 => 'appcode-eap' do
  version '143.379.12'
  sha256 '47e35032feff60745400564a9dcf6ea27b676badf820ef59d1e4b3dda200524a'

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
