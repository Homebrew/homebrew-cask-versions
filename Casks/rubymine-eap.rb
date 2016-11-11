cask 'rubymine-eap' do
  version '2016.3,163.7342.19'
  sha256 '2de6a469beb62a4a51982e597ea3f072b59bc0a75ca95d577abf573aa18dca12'

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
