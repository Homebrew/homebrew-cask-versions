cask 'webstorm-eap' do
  version '145.596.9'
  sha256 'fae5fc7baf973f2d4f1b378ff411c7d4b4c2fdcf8c8bb0faff58b8342758cfb2'

  url "https://download.jetbrains.com/webstorm/WebStorm-EAP-#{version}.dmg"
  name 'WebStorm'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'
  license :commercial

  app 'WebStorm 2016.1 EAP.app'
  binary 'WebStorm 2016.1 EAP.app/Contents/MacOS/webstorm'

  zap delete: [
                '~/.WebStorm2016.1',
                '~/Library/Preferences/com.jetbrains.webstorm.plist',
                '~/Library/Preferences/WebStorm2016.1',
                '~/Library/Application Support/WebStorm2016.1',
                '~/Library/Caches/WebStorm2016.1',
                '~/Library/Logs/WebStorm2016.1',
              ]
end
