cask :v1 => 'webstorm-eap' do
  version '143.870.2'
  sha256 '91569c549f9aa1edf5a1a243c2f76923c28aad6b54bd5a349bf9ebb4de3427e7'

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
