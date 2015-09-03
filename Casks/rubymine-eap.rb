cask :v1 => 'rubymine-eap' do
  version '142.4245.2'
  sha256 '9fe33d27853377dff1f9a8828dd4e01108b3c56c016a98931f99c9a978953d3a'

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
