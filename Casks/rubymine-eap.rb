cask 'rubymine-eap' do
  version '145.184.8'
  sha256 'b9de2b0543d3d47932666788b86fc67e9cd5951526d62b1220370bf9209d6e4a'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine EAP'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/RubyMine+EAP'
  license :commercial

  app 'RubyMine EAP.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.rubymine-EAP.plist',
                '~/Library/Preferences/RubyMine70',
                '~/Library/Application Support/RubyMine-EAP',
                '~/Library/Caches/RubyMine70',
                '~/Library/Logs/RubyMine70',
                '/usr/local/bin/mine',
              ]
end
