cask 'rubymine-eap' do
  version '144.4199.20'
  sha256 'd62d3d795d4914992d17c44a7a69d8854bcaeeb786b204b93df3ef1953548b1d'

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
