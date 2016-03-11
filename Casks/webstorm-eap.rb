cask 'webstorm-eap' do
  version '145.256.40'
  sha256 'd4768500500a6349db252edfcf705f388d7d4273a56a7d8006dcbb9848d5bb72'

  url "https://download.jetbrains.com/webstorm/WebStorm-EAP-#{version}.dmg"
  name 'WebStorm'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'
  license :commercial

  app 'WebStorm 2016 EAP.app'
  binary 'WebStorm 2016 EAP.app/Contents/MacOS/webstorm'

  zap delete: [
                '~/.WebStorm2016.1',
                '~/Library/Preferences/com.jetbrains.webstorm.plist',
                '~/Library/Preferences/WebStorm2016.1',
                '~/Library/Application Support/WebStorm2016.1',
                '~/Library/Caches/WebStorm2016.1',
                '~/Library/Logs/WebStorm2016.1',
              ]
end
