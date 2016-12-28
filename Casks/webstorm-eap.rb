cask 'webstorm-eap' do
  version '2017.1,171.2014.8'
  sha256 '4a8b2dcb13b793d679691f87bfa90ef48c2641544f775f54d50b7257b4624e5c'

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
