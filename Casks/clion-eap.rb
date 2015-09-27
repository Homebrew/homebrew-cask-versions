cask :v1 => 'clion-eap' do
  version '142.5047.10'
  sha256 '2771157f117d455dd56051831bfcd9899ca1080a1b389cee89a177e7282bebef'

  url "https://download.jetbrains.com/cpp/CLion-#{version}-custom-jdk-bundled.dmg"
  name 'CLion'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'
  license :commercial

  app 'CLion EAP.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion.plist',
                  '~/Library/Preferences/clion12',
                  '~/Library/Application Support/clion12',
                  '~/Library/Caches/clion12',
                  '~/Library/Logs/clion12',
                 ]
end
