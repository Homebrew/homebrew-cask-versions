cask :v1 => 'webstorm-bundled-jdk' do
  version '11.0.0'
  sha256 'aecc26c2cb95d610bcb60d1224b4f8e80031cd8dd1430256173ecc35f7464f40'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}-custom-jdk-bundled.dmg"
  name 'WebStorm'
  homepage 'https://www.jetbrains.com/webstorm/'
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
