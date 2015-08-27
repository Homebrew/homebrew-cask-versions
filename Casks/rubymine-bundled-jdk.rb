cask :v1 => 'rubymine-bundled-jdk' do
  version '7.1.4'
  sha256 '4f5df21a17eb8bb337756db485ef489f720b87f6f97398afb6358e5cd9261071'

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
