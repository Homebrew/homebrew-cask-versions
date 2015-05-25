cask :v1 => 'webstorm-bundled-jdk' do
  version '10.0.3'
  sha256 'bba78b0123e0ce40a1f99079e91b4edd8afdbbc19b9260745501f52cbdad40bb'

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
