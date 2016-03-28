cask 'rubymine-eap' do
  version '2016.1-RC'
  sha256 'a7f620c6841a3abdc73fa477697d9ffe2bb772d0ec0c50a3eb4fc868803ef982'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine EAP'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/RubyMine+EAP'
  license :commercial

  app 'RubyMine.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.rubymine-EAP.plist',
                '~/Library/Preferences/RubyMine80',
                '~/Library/Application Support/RubyMine-EAP',
                '~/Library/Caches/RubyMine70',
                '~/Library/Logs/RubyMine70',
                '/usr/local/bin/mine',
              ]
end
