cask 'clion-eap' do
  version '163.7342.13'
  sha256 'c4dc48b103328f5cae5d4c4e0790a08adb60782735bd03eab187697fe762d346'

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
