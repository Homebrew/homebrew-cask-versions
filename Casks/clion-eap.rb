cask 'clion-eap' do
  version '144.3143.4'
  sha256 '8ae1bd195a6017eae5f500e0e56aaf1990ecc69a4a9891d68e47e0629801119d'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'
  license :commercial

  app 'CLion EAP.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.CLion-EAP.plist',
                '~/Library/Preferences/CLion15',
                '~/Library/Application Support/CLion15',
                '~/Library/Caches/CLion15',
                '~/Library/Logs/CLion15',
              ]
end
