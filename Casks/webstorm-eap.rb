cask 'webstorm-eap' do
  version 'EAP,163.5644.1'
  sha256 '97f3a0342697fec5176b9b83d20dfa11ddf2da8362bd6176dad70ac835934a92'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}-#{version.after_comma}.dmg"
  name 'WebStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'

  conflicts_with cask: 'webstorm'

  app 'WebStorm 2016.3 EAP.app'

  uninstall delete: '/usr/local/bin/wstorm'

  zap delete: [
                "~/Library/Preferences/WebStorm#{version.before_comma}",
                "~/Library/Application Support/WebStorm#{version.before_comma}",
                "~/Library/Caches/WebStorm#{version.before_comma}",
                "~/Library/Logs/WebStorm#{version.before_comma}",
              ]
end
