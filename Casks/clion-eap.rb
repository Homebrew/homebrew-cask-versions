cask 'clion-eap' do
  version '163.6110.22'
  sha256 'e45c2bfe51ff210bb2fe9158306af6a434f0d00e32f8d03485faaa2c70c40732'

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
