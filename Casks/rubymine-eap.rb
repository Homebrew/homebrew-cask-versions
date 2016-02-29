cask 'rubymine-eap' do
  version '145.61.16'
  sha256 'e9ab3ae69cfb73c82b99f509ba0c19724129b9d3c67de33a6b8dfd14defca42f'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine EAP'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/RubyMine+EAP'
  license :commercial

  app 'RubyMine EAP.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.rubymine-EAP.plist',
                '~/Library/Preferences/RubyMine70',
                '~/Library/Application Support/RubyMine70',
                '~/Library/Caches/RubyMine70',
                '~/Library/Logs/RubyMine70',
                '/usr/local/bin/mine',
              ]
end
