cask :v1 => 'rubymine-eap' do
  version '8.0.0-RC'
  sha256 'efd03e25658b37d2b94e78b9fb6717ee7a33aa7f90f1ec20f1752a19829f38df'

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
