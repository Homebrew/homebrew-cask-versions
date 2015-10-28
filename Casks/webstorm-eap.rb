cask :v1 => 'webstorm-eap' do
  version '11.0.0-RC'
  sha256 'c91728a2e4e79d6ca2b89cb322f3c5361d2cd90db0805a615916501c49528795'

  url "http://download.jetbrains.com/webstorm/WebStorm-#{version}-custom-jdk-bundled.dmg"
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
