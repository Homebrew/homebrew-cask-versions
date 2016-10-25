cask 'clion-eap' do
  version '163.6512.7'
  sha256 'd2aa23b7960e9cc712a599bdf123990e253a58e52f879793694866eda0567f55'

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
