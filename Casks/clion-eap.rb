cask 'clion-eap' do
  version '144.3357.5'
  sha256 'dcd850ff9d455a45f554cb94b06f60c85a70a36f061e865a73f31ddb6210a1e7'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'
  license :commercial

  app 'CLion EAP.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.CLion-EAP.plist',
                '~/Library/Preferences/CLion15',
                '~/Library/Application Support/CLion15',
                '~/Library/Caches/CLion15',
                '~/Library/Logs/CLion15',
              ]
end
