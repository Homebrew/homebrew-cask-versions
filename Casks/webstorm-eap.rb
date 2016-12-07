cask 'webstorm-eap' do
  version 'RC,2016.3.2'
  sha256 '0b9a84b355d24d799960ad356ae329afab678d36ba65498a983bc6813f6afc44'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.after_comma}-#{version.before_comma}.dmg"
  name 'WebStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'

  conflicts_with cask: 'webstorm'

  app 'WebStorm.app'

  uninstall delete: '/usr/local/bin/wstorm'

  zap delete: [
                "~/Library/Preferences/WebStorm#{version.after_comma.major_minor}",
                "~/Library/Application Support/WebStorm#{version.after_comma.major_minor}",
                "~/Library/Caches/WebStorm#{version.after_comma.major_minor}",
                "~/Library/Logs/WebStorm#{version.after_comma.major_minor}",
              ]
end
