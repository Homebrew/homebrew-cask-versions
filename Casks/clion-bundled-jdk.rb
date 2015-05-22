cask :v1 => 'clion-bundled-jdk' do
  version '1.0.3'
  sha256 'ecdbae5b037422f56ff7175d617808324ec0df7c2474a4852841937f285c301f'

  url "https://download.jetbrains.com/cpp/CLion-#{version}-custom-jdk-bundled.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion'
  license :commercial

  app 'CLion.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion.plist',
                  '~/Library/Preferences/clion10',
                  '~/Library/Application Support/clion10',
                  '~/Library/Caches/clion10',
                  '~/Library/Logs/clion10',
                 ]

  conflicts_with :cask => 'clion'
end
