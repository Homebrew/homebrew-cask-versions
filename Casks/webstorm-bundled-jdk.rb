cask :v1 => 'webstorm-bundled-jdk' do
  version '10.0.4'
  sha256 '539e8505c47e1f96349316ebc6441ef8f87c8b461fd6db88608a2269ba95246d'

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
