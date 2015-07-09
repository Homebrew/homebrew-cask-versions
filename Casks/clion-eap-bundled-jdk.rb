cask :v1 => 'clion-eap-bundled-jdk' do
  version '141.2346.5'
  sha256 '71265920c204f20d6da774b103bd350b658f4be2c11c84e251c0921f876350a1'

  url "https://download.jetbrains.com/cpp/CLion-#{version}-custom-jdk-bundled.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion'
  license :commercial

  app 'CLion EAP.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion.plist',
                  '~/Library/Preferences/clion11',
                  '~/Library/Application Support/clion11',
                  '~/Library/Caches/clion11',
                  '~/Library/Logs/clion11',
                 ]

  conflicts_with :cask => 'clion-eap'
end
