cask 'webstorm-eap' do
  version 'EAP,163.4396.14'
  sha256 '607f3f20cfba003842f93d7e4a9b4dcd9239cd42ec08c396176679543a825343'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}-#{version.after_comma}.dmg"
  name 'WebStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'
  license :commercial

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
