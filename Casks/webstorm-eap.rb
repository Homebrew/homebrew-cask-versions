cask 'webstorm-eap' do
  version '145.256.40'
  sha256 'd4768500500a6349db252edfcf705f388d7d4273a56a7d8006dcbb9848d5bb72'

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
