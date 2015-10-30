cask :v1 => 'clion-eap' do
  version '1.2-RC2'
  sha256 'ab9f6fb3a8f3412843bb19330d7784c62516f70ce43f1bac7c63fc28e2ee5078'

  url "https://download.jetbrains.com/cpp/CLion-#{version}-custom-jdk-bundled.dmg"
  name 'CLion'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'
  license :commercial

  app 'CLion EAP.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion.plist',
                  '~/Library/Preferences/clion12',
                  '~/Library/Application Support/clion12',
                  '~/Library/Caches/clion12',
                  '~/Library/Logs/clion12',
                 ]
end
