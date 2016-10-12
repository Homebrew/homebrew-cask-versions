cask 'clion-eap' do
  version '163.5644.7'
  sha256 'fa960f8c7277642b37cec37a15dd4242157c84ff4ec7936037d846a41ed52de9'

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
