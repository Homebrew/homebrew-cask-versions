cask 'webstorm-eap' do
  version '144.2925.4'
  sha256 'fa100e8b91553484df066839b27a9b8740448557bcc155f6829db8d5e5c3d8fb'

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
