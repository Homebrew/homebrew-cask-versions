cask :v1 => 'rubymine-bundled-jdk' do
  version '7.1.2'
  sha256 '8d96d6b0484039055335618939a50b25a97cf13c93c2137dbafe5e4986725095'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}-custom-jdk-bundled.dmg"
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'
  license :commercial

  app 'RubyMine.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.rubymine.plist',
                  '~/Library/Preferences/RubyMine70',
                  '~/Library/Application Support/RubyMine70',
                  '~/Library/Caches/RubyMine70',
                  '~/Library/Logs/RubyMine70',
                  '/usr/local/bin/mine',
                 ]

  conflicts_with :cask => 'rubymine'
end
