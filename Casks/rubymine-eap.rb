cask 'rubymine-eap' do
  version '162.1447.23'
  sha256 '6a454cbb89325e14768b9ed872c533772fb5af0857016decec4119dbf346094b'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine EAP'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/Early+Access+Program'
  license :commercial

  conflicts_with cask: 'rubymine'

  app 'RubyMine EAP.app'

  uninstall delete: '/usr/local/bin/mine'

  zap delete: [
                '~/Library/Preferences/RubyMine2016.2',
                '~/Library/Application Support/RubyMine2016.2',
                '~/Library/Caches/RubyMine2016.2',
                '~/Library/Logs/RubyMine2016.2',
              ]
end
