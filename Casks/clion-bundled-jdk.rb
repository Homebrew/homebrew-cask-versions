cask :v1 => 'clion-bundled-jdk' do
  version '1.1'
  sha256 'ce852e9d6626965b5e40e9da98efd48e0734ad1de712e84bacca3b9a78994361'

  url "https://download.jetbrains.com/cpp/CLion-#{version}-custom-jdk-bundled.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion'
  license :commercial

  app 'CLion.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion.plist',
                  '~/Library/Preferences/clion11',
                  '~/Library/Application Support/clion11',
                  '~/Library/Caches/clion11',
                  '~/Library/Logs/clion11',
                 ]

  conflicts_with :cask => 'clion'
end
