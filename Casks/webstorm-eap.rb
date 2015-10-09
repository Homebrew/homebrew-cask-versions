cask :v1 => 'webstorm-eap' do
  version '143.88'
  sha256 'd8b82c79451bd71eabb8ebf4f067f00b153e1fbfa0af570787c35f94e2e55781'

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
