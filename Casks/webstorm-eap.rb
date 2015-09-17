cask :v1 => 'webstorm-eap' do
  version '142.4723'
  sha256 '2b4bdf810ef9a2945d9304a7b00901275745501ad385581ac5a07ee7e47d644d'

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
