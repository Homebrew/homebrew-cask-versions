cask :v1 => 'rubymine-eap' do
  version '142.4675.4'
  sha256 '3360dd14c8112b6db8e824c620c2464158a985e862fbc4637ecc9093dd849086'

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
