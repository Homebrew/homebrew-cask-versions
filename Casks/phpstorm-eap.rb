cask :v1 => 'phpstorm-eap' do
  version '143.1044'
  sha256 '3c0f6e2113789f86a24d9548172ab04195f364f6f3ab9e645b7fa0c51538ac9f'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}-custom-jdk-bundled.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  app 'PhpStorm EAP.app'

  zap :delete => [
                  '~/Library/Application Support/WebIde100',
                  '~/Library/Caches/WebIde100',
                  '~/Library/Logs/WebIde100',
                  '~/Library/Preferences/WebIde100',
                  '~/Library/Preferences/com.jetbrains.PhpStorm-EAP.plist',
                  '~/.WebIde100',
                 ]

end
