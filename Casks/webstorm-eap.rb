cask 'webstorm-eap' do
  version '2017.1,171.3780.21'
  sha256 '9b3601a06e3c36944c2c91d96a583af8141ab17dfa855d76aec4dd4f5fc4da13'

  url "https://download.jetbrains.com/webstorm/WebStorm-EAP-#{version.after_comma}.dmg"
  name 'WebStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'

  conflicts_with cask: 'webstorm'

  app "WebStorm #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/wstorm'

  zap delete: [
                "~/Library/Application Support/WebStorm#{version.major_minor}",
                "~/Library/Caches/WebStorm#{version.major_minor}",
                "~/Library/Logs/WebStorm#{version.major_minor}",
                "~/Library/Preferences/WebStorm#{version.major_minor}",
              ]
end
