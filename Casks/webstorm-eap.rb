cask 'webstorm-eap' do
  version 'RC,2016.3'
  sha256 'a5ca297846ba9403e8db07c9c638890f81553719b8e075d8e15ec6743f662a11'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.after_comma}-#{version.before_comma}.dmg"
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
