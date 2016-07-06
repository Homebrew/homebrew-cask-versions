cask 'clion-eap' do
  version '162.1236.1'
  sha256 '7735273143cc4f99f9d090b53d77b2b68026c352d151631b0446f904ec364c0d'

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
