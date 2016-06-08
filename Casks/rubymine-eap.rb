cask 'rubymine-eap' do
  version '162.646.16'
  sha256 '2c2456da5d5d9ffa2152c0e4bd3269445107253adfab4e32e2bdc34c33cdc25f'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine EAP'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/Early+Access+Program'
  license :commercial

  conflicts_with cask: 'rubymine'

  app 'RubyMine 2016.2 EAP.app'

  uninstall delete: '/usr/local/bin/mine'

  zap delete: [
                '~/Library/Preferences/RubyMine2016.2',
                '~/Library/Application Support/RubyMine2016.2',
                '~/Library/Caches/RubyMine2016.2',
                '~/Library/Logs/RubyMine2016.2',
              ]
end
