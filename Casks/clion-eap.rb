cask 'clion-eap' do
  version '162.1889.3'
  sha256 'dfceb0f2e836e239a862fb16fe6106f74df8f97b8dbb6d40e4a44f05686d9c54'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion EAP'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'

  conflicts_with cask: 'clion'

  app 'CLion 2016.2.1 EAP.app'

  zap delete: [
                '~/Library/Preferences/CLion2016.2',
                '~/Library/Application Support/CLion2016.2',
                '~/Library/Caches/CLion2016.2',
                '~/Library/Logs/CLion2016.2',
              ]
end
