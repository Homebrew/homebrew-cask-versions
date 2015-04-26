cask :v1 => 'clion-bundled-jdk' do
  version '1.0'
  sha256 '3e18c548084122e33bf2545b62425b6ae2b3fc74945133b7edd03fac34f7f2f2'

  url "https://download.jetbrains.com/cpp/CLion-#{version}-custom-jdk-bundled.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion'
  license :commercial

  app 'CLion.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion.plist',
                  "~/Library/Preferences/clion10",
                  "~/Library/Application Support/clion10",
                  "~/Library/Caches/clion10",
                  "~/Library/Logs/clion10",
                 ]

  conflicts_with :cask => 'clion'
end
