cask 'appcode-eap' do
  version '162.1024.11'
  sha256 '758f5a2e59a94a1fe6c7f1e43d858281c1983927a9456229d147cde9a6be77d3'

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
