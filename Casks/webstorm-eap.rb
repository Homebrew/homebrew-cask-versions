cask 'webstorm-eap' do
  version '144.3600.14'
  sha256 '0decde902f4de62a74b5ca17832b6ce65908e33c3a38713a7988086c839654e3'

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
