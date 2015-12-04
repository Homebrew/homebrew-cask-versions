cask :v1 => 'rubymine-eap' do
  version '143.1183.12'
  sha256 '586b8327feb053b05d8f50aa9526cc7d10400ed3006c8151ab767fbf20fae419'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}-custom-jdk-bundled.dmg"
  name 'RubyMine EAP'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/RubyMine+EAP'
  license :commercial

  app 'RubyMine EAP.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.rubymine-EAP.plist',
                  '~/Library/Preferences/RubyMine70',
                  '~/Library/Application Support/RubyMine70',
                  '~/Library/Caches/RubyMine70',
                  '~/Library/Logs/RubyMine70',
                  '/usr/local/bin/mine',
                 ]
end
