cask 'clion-eap' do
  version '144.2151.8'
  sha256 '909e9955647fe102bf1f83aa3c4bcb91961426674904e1b9072e7eecdaffb74c'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'
  license :commercial

  app 'CLion EAP.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion-EAP.plist',
                  '~/Library/Preferences/CLion15',
                  '~/Library/Application Support/CLion15',
                  '~/Library/Caches/CLion15',
                  '~/Library/Logs/CLion15',
  ]
end
