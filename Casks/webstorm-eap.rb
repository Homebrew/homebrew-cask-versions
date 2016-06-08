cask 'webstorm-eap' do
  version '2016.2,162.844.4'
  sha256 'eabb43def172f15d42c8f8ba1350cb78d19723214253e8d4f1583552dc8aebfe'

  url "https://download.jetbrains.com/webstorm/WebStorm-EAP-#{version.after_comma}.dmg"
  name 'WebStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'
  license :commercial

  conflicts_with cask: 'webstorm'

  app "WebStorm #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/wstorm'

  zap delete: [
                '~/.WebStorm2016.2',
                "~/Library/Preferences/WebStorm#{version.before_comma}",
                "~/Library/Application Support/WebStorm#{version.before_comma}",
                "~/Library/Caches/WebStorm#{version.before_comma}",
                "~/Library/Logs/WebStorm#{version.before_comma}",
              ]
end
