cask 'clion-eap' do
  version '162.1531.1'
  sha256 '12852f0535b04319661a8aa6ab41f7713672c02806fb89aacbb3395b65b438c9'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion EAP'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'
  license :commercial

  conflicts_with cask: 'clion'

  app 'CLion 2016.2.1 EAP.app'

  zap delete: [
                '~/Library/Preferences/CLion2016.2',
                '~/Library/Application Support/CLion2016.2',
                '~/Library/Caches/CLion2016.2',
                '~/Library/Logs/CLion2016.2',
              ]
end
