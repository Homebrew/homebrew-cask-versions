cask :v1 => 'clion-eap' do
  version '142.4675.5'
  sha256 'b9b2f613a018730b5894ffa6135cb196df2118c0469fc5d8c24da801f63a70c7'

  url "https://download.jetbrains.com/cpp/CLion-#{version}-custom-jdk-bundled.dmg"
  name 'CLion'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'
  license :commercial

  app 'CLion.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion.plist',
                  '~/Library/Preferences/clion11',
                  '~/Library/Application Support/clion11',
                  '~/Library/Caches/clion11',
                  '~/Library/Logs/clion11',
                 ]
end
