cask :v1 => 'webstorm-eap' do
  version '142.5255'
  sha256 'fa59db970b24a8d0a40340ca8133584d4b3ab91959642a580881645be389e79b'

  url "http://download.jetbrains.com/webstorm/WebStorm-EAP-#{version}-custom-jdk-bundled.dmg"
  name 'WebStorm'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+11+EAP'
  license :commercial

  app 'WebStorm 11 EAP.app'
  binary 'WebStorm.app/Contents/MacOS/webstorm'

  zap :delete => [
                  '~/.WebStorm11',
                  '~/Library/Preferences/com.jetbrains.webstorm.plist',
                  '~/Library/Preferences/WebStorm11',
                  '~/Library/Application Support/WebStorm11',
                  '~/Library/Caches/WebStorm11',
                  '~/Library/Logs/WebStorm11',
                 ]
end
