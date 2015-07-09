cask :v1 => 'clion-eap' do
  version '141.2346.5'
  sha256 '147649e1c721f0ec29285287793a4c7acdc7f6abbd01e2fbe97c1ad944ff5fa7'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
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

  conflicts_with :cask => 'clion-eap-bundled-jdk'
end
