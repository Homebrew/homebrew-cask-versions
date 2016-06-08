cask 'clion-eap' do
  version '162.646.11'
  sha256 '8cf9b0c9b75465e05d05d9b1aefa7d01b16fa2487a575f337af3d6934262f700'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion EAP'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'
  license :commercial

  conflicts_with cask: 'clion'

  app 'CLion 2016.2 EAP.app'

  zap delete: [
                '~/Library/Preferences/CLion2016.2',
                '~/Library/Application Support/CLion2016.2',
                '~/Library/Caches/CLion2016.2',
                '~/Library/Logs/CLion2016.2',
              ]
end
