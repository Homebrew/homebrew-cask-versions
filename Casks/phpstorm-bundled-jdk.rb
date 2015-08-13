cask :v1 => 'phpstorm-bundled-jdk' do
  version '9.0.1'
  sha256 '274f050445971108e503655cad01d407ee24b078a9a8d7075bd260bea4c3eb35'

  url 'http://download-cf.jetbrains.com/webide/PhpStorm-#{version}-custom-jdk-bundled.dmg'
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
