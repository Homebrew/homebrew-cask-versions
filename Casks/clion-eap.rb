cask 'clion-eap' do
  version '162.426.5'
  sha256 '05ecf954104ef8e0ad352b1e120e396b0418a8e31f24b14f9e1fe308a55d0b9f'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion EAP'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'
  license :commercial

  conflicts_with cask: 'clion'

  app 'CLion 2016.2 EAP.app'

  zap delete: [
                '~/.CLion2016.2',
                '~/Library/Preferences/CLion2016.2',
                '~/Library/Application Support/CLion2016.2',
                '~/Library/Caches/CLion2016.2',
                '~/Library/Logs/CLion2016.2',
              ]
end
