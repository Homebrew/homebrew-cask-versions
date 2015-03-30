cask :v1 => 'rubymine-eap-bundled-jdk' do
  version '141.373'
  sha256 '2605d3b61d9ae4a0590337d04bc24bf2f1c430cb5c226b1bffafcde6b61e478d'

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
