cask :v1 => 'rubymine-bundled-jdk' do
  version '7.1'
  sha256 '2e9fced43c8e14ffbc82a72a8f6cde1cbab50861db079162ca5ff34c668ba57c'

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
end
