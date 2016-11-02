cask 'clion-eap' do
  version '163.6957.27'
  sha256 'c0dbaf67f2fe85200c8a86297af700cb3bb37978f78aa1aafdc4bb37e3085623'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion EAP'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'

  conflicts_with cask: 'clion'

  app 'CLion 2016.3 EAP.app'

  zap delete: [
                '~/Library/Preferences/CLion2016.3',
                '~/Library/Application Support/CLion2016.3',
                '~/Library/Caches/CLion2016.3',
                '~/Library/Logs/CLion2016.3',
              ]
end
