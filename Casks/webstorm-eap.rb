cask 'webstorm-eap' do
  version 'EAP,163.6512.13'
  sha256 'ebc5360df75bc59bdc243c76c81b9806fee8efc08465f16ac5d97faa01640d67'

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
