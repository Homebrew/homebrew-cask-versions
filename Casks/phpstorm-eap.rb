cask 'phpstorm-eap' do
  version '145.256.26'
  sha256 '8aff563659260a19d2c5dc22e2aece9022bc32d3711c36ce33bd973e59d1e398'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  app 'PhpStorm EAP.app'

  zap delete: [
                '~/Library/Application Support/WebIde100',
                '~/Library/Caches/WebIde100',
                '~/Library/Logs/WebIde100',
                '~/Library/Preferences/WebIde100',
                '~/Library/Preferences/com.jetbrains.PhpStorm-EAP.plist',
                '~/.WebIde100',
              ]
end
