cask :v1 => 'phpstorm-bundled-jdk' do
  version '9.0.2'
  sha256 '38030261bb8ee17e0238b92f7d1f49671e6dc54b2b69aeaf25cbd20b94f0c479'

  url "http://download-cf.jetbrains.com/webide/PhpStorm-#{version}-custom-jdk-bundled.dmg"
  name 'PhpStorm'
  homepage 'https://www.jetbrains.com/phpstorm/'
  license :commercial

  app 'PhpStorm.app'

  zap :delete => [
                  '~/Library/Application Support/WebIde90',
                  '~/Library/Preferences/WebIde90',
                  '~/Library/Preferences/com.jetbrains.PhpStorm.plist',
                 ]
end
