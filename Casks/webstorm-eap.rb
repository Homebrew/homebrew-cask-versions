cask 'webstorm-eap' do
  version 'EAP,163.3094.20'
  sha256 '18a27998e2ce7e573e650b86ec79206500a65dc64401bc1092812ffe9fe1173d'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}-#{version.after_comma}.dmg"
  name 'WebStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'
  license :commercial

  conflicts_with cask: 'webstorm'

  app 'WebStorm.app'

  uninstall delete: '/usr/local/bin/wstorm'

  zap delete: [
                "~/Library/Preferences/WebStorm#{version.before_comma}",
                "~/Library/Application Support/WebStorm#{version.before_comma}",
                "~/Library/Caches/WebStorm#{version.before_comma}",
                "~/Library/Logs/WebStorm#{version.before_comma}",
              ]
end
