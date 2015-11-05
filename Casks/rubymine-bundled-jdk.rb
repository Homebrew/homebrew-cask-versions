cask :v1 => 'rubymine-bundled-jdk' do
  version '8.0.0'
  sha256 '6e20d0fbbd3edf71c44f0c46e6ad8b400a51d5e1604d68fb8ec8ccee8f6e851d'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}-custom-jdk-bundled.dmg"
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'
  license :commercial

  app 'RubyMine.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.rubymine.plist',
                  '~/Library/Preferences/RubyMine80',
                  '~/Library/Application Support/RubyMine80',
                  '~/Library/Caches/RubyMine80',
                  '~/Library/Logs/RubyMine80',
                  '/usr/local/bin/mine',
                 ]

  conflicts_with :cask => 'rubymine'
end
