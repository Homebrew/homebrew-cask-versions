cask :v1 => 'appcode-eap-bundled-jdk' do
  version '141.2454.1'
  sha256 'cb4708eb4ddb59587bd7eb3a72bb4eed6ba6cb9a85fbc4a3d010027198b63ac9'

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
