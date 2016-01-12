cask 'webstorm-eap' do
  version '144.2608.3'
  sha256 '82321c08e717c1f1202a53fc8d6ae591bb6123f81b237c078dc1f223a5fb4969'

  url "https://download.jetbrains.com/webstorm/WebStorm-EAP-#{version}.dmg"
  name 'WebStorm'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'
  license :commercial

  app 'WebStorm EAP.app'
  binary 'WebStorm.app/Contents/MacOS/webstorm'

  zap :delete => [
                  '~/.WebStorm12',
                  '~/Library/Preferences/com.jetbrains.webstorm.plist',
                  '~/Library/Preferences/WebStorm12',
                  '~/Library/Application Support/WebStorm12',
                  '~/Library/Caches/WebStorm12',
                  '~/Library/Logs/WebStorm12',
                 ]
end
