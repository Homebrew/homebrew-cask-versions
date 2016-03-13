cask 'clion-eap' do
  version '145.256.37'
  sha256 '5a2d46d8179f553994de0db755761654d47a3804bbccbd440e3a2ef9d5f51f27'

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
