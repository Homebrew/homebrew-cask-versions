cask :v1 => 'webstorm-bundled-jdk' do
  version '10.0.1'
  sha256 '8b05be91e5c688908d6bcaab4d1f5ead86912d5b33b332a7dd5964dc901090b7'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}-custom-jdk-bundled.dmg"
  name 'WebStorm'
  homepage 'http://www.jetbrains.com/webstorm/'
  license :commercial

  app 'WebStorm.app'
  binary 'WebStorm.app/Contents/MacOS/webstorm'

  zap :delete => [
                  '~/.WebStorm10',
                  '~/Library/Preferences/com.jetbrains.webstorm.plist',
                  '~/Library/Preferences/WebStorm10',
                  '~/Library/Application Support/WebStorm10',
                  '~/Library/Caches/WebStorm10',
                  '~/Library/Logs/WebStorm10',
                 ]
end
