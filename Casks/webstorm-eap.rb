cask 'webstorm-eap' do
  version '2017.1,171.1834.8'
  sha256 '6a6bff688b478fc0d9a22a713e90fdc2ac0116ad744b840fcf3dcd450f93201e'

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
