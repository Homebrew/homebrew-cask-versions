cask 'appcode-eap' do
  version '3.3.2-RC'
  sha256 '8278cc789a001b00c2038641572f864f0f9db8f99c88bd074132a5fcd7e1d012'

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

  conflicts_with :cask => 'appcode'
end
