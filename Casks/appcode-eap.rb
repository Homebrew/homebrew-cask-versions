cask 'appcode-eap' do
  version '162.1236.3'
  sha256 '849b51b3915c80112ce85de99fc5b994e39b012031531bda3c6b969c66ada842'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode EAP'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  conflicts_with cask: 'appcode'

  app 'AppCode 2016.2 EAP.app'

  zap delete: [
                '~/Library/Preferences/AppCode2016.2',
                '~/Library/Application Support/AppCode2016.2',
                '~/Library/Caches/AppCode2016.2',
                '~/Library/Logs/AppCode2016.2',
              ]
end
