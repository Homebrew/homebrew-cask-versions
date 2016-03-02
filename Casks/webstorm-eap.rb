cask 'webstorm-eap' do
  version '145.184.5'
  sha256 'f4648be4775bdc1276deed787a31b198c5385e39e5a8fa7bbdd732eb6f7c4a4d'

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
