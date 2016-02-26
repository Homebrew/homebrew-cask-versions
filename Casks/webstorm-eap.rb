cask 'webstorm-eap' do
  version '145.61.17'
  sha256 'b299e46b20d0148e45799993a263a309a0fa3e14aa6f03b3ef7e3cda7f21f0c2'

  url "https://download.jetbrains.com/webstorm/WebStorm-EAP-#{version}.dmg"
  name 'WebStorm'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'
  license :commercial

  app 'WebStorm 12 EAP.app'
  binary 'WebStorm 12 EAP.app/Contents/MacOS/webstorm'

  zap delete: [
                '~/.WebStorm12',
                '~/Library/Preferences/com.jetbrains.webstorm.plist',
                '~/Library/Preferences/WebStorm12',
                '~/Library/Application Support/WebStorm12',
                '~/Library/Caches/WebStorm12',
                '~/Library/Logs/WebStorm12',
              ]
end
