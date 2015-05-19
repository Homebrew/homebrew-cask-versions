cask :v1 => 'clion-bundled-jdk' do
  version '1.0.2'
  sha256 '0f96e6320a5edbd721a60fed880034f800eb906b56d18290e37877e53a18048b'

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
