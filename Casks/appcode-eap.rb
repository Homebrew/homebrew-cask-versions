cask 'appcode-eap' do
  version '162.1531.4'
  sha256 'dcee0ceab8de20acaaab32d14afbee5ca4b509fdfc3d45ae0ecb42eb4bed11e5'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode EAP'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  conflicts_with cask: 'appcode'

  app 'AppCode 2016.2.1 EAP.app'

  zap delete: [
                '~/Library/Preferences/AppCode2016.2',
                '~/Library/Application Support/AppCode2016.2',
                '~/Library/Caches/AppCode2016.2',
                '~/Library/Logs/AppCode2016.2',
              ]
end
