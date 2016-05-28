cask 'rubymine-eap' do
  version '145.1503.19'
  sha256 '0e937f877249dbbc5c54ea16c62c6981b521eeaffa0ffd26fccac68f145be762'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine EAP'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/Early+Access+Program'
  license :commercial

  conflicts_with cask: 'rubymine'

  app 'RubyMine EAP.app'

  uninstall delete: '/usr/local/bin/mine'

  zap delete: [
                '~/.RubyMine2016.1',
                '~/Library/Preferences/RubyMine2016.1',
                '~/Library/Application Support/RubyMine2016.1',
                '~/Library/Caches/RubyMine2016.1',
                '~/Library/Logs/RubyMine2016.1',
              ]
end
