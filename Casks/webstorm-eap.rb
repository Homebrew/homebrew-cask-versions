cask 'webstorm-eap' do
  version '2016.2.1,RC'
  sha256 'e68b5a699f0b8883ddfd279c68cb8f8cd7f54da2d24af236362cb6835f756608'

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
