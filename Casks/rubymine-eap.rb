cask 'rubymine-eap' do
  version '2017.1,171.3780.26'
  sha256 '07b1ee2b58eb10587b7e9d0c4195506487022a40d3ef1b942dc15bf4eec61838'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.after_comma}.dmg"
  name 'RubyMine EAP'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/Early+Access+Program'

  conflicts_with cask: 'rubymine'

  app 'RubyMine EAP.app'

  uninstall delete: '/usr/local/bin/mine'

  zap delete: [
                "~/Library/Preferences/RubyMine#{version.major_minor}",
                "~/Library/Application Support/RubyMine#{version.major_minor}",
                "~/Library/Caches/RubyMine#{version.major_minor}",
                "~/Library/Logs/RubyMine#{version.major_minor}",
              ]
end
