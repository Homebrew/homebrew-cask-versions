cask :v1 => 'clion-eap' do
  version '144.2151.8'
  sha256 '909e9955647fe102bf1f83aa3c4bcb91961426674904e1b9072e7eecdaffb74c'

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
