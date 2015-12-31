cask 'clion-eap' do
  version '144.2608.6'
  sha256 '089d299d44d44b38b687a319133a1385b991578b0ab4b9f16583ac60dd0f143b'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'
  license :commercial

  app 'CLion EAP.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion-EAP.plist',
                  '~/Library/Preferences/CLion15',
                  '~/Library/Application Support/CLion15',
                  '~/Library/Caches/CLion15',
                  '~/Library/Logs/CLion15',
  ]
end
