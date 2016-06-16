cask 'appcode-eap' do
  version '162.917.9'
  sha256 '1be1755eab63591c69caf9ec0e7c34d1e437b7fa2029a58fed952f9859008e7d'

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
