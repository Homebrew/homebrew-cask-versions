cask 'rubymine-eap' do
  version '2016.2.2,162.1628.31'
  sha256 'cef6016ed186296ff9c872eb8e127faeea82f4f808f0082b71758f4d719890d1'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.after_comma}.dmg"
  name 'RubyMine EAP'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/Early+Access+Program'
  license :commercial

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
