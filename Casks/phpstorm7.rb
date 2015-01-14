cask :v1 => 'phpstorm7' do
  version '7.1.4'
  sha256 '618d05d39d8565677cddc63afee0fc9b50431a7efc6da930a18c54831ea102f5'

  url "http://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  homepage 'http://www.jetbrains.com/phpstorm/'
  license :commercial

  app 'PhpStorm.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  '~/Library/Application Support/WebIde70',
                  '~/Library/Preferences/WebIde70',
                  '~/Library/Preferences/com.jetbrains.PhpStorm.plist',
                 ]
end
