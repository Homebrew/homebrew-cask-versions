cask 'clion-eap' do
  version '144.4199.17'
  sha256 'ecf813207cc1efb00b3a0774762d29d8886c029a7cb245917ddcd596ca322cf4'

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
