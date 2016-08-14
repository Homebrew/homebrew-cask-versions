cask 'rubymine-eap' do
  version '162.1628.31,2016.2.2'
  sha256 'cef6016ed186296ff9c872eb8e127faeea82f4f808f0082b71758f4d719890d1'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}.dmg"
  name 'RubyMine EAP'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/Early+Access+Program'
  license :commercial

  conflicts_with cask: 'rubymine'

  app 'RubyMine EAP.app'

  uninstall delete: '/usr/local/bin/mine'

  zap delete: [
                "~/Library/Preferences/RubyMine#{version.after_comma.major_minor}",
                "~/Library/Application Support/RubyMine#{version.after_comma.major_minor}",
                "~/Library/Caches/RubyMine#{version.after_comma.major_minor}",
                "~/Library/Logs/RubyMine#{version.after_comma.major_minor}",
              ]
end
