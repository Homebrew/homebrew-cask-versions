cask :v1 => 'appcode-eap-bundled-jdk' do
  version '141.2000.4'
  sha256 '1b8d72e5c6eb8836f9a962d861a055ac4ed33faf7a9b855816d4e77f9ab88f5c'

  url "https://download.jetbrains.com/objc/AppCode-#{version}-custom-jdk-bundled.dmg"
  name 'AppCode'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  app 'AppCode EAP.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.AppCode-EAP.plist',
                  '~/Library/Preferences/AppCode32',
                  '~/Library/Application Support/AppCode32',
                  '~/Library/Caches/AppCode32',
                  '~/Library/Logs/AppCode32',
                 ]

  conflicts_with :cask => 'appcode-eap'
end
