cask :v1 => 'clion-bundled-jdk' do
  version '1.0.4'
  sha256 '25ae0732c77137e5e6e456d313be63702daa9f25a16054c88f7f8fe9154e9302'

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
