cask 'webstorm-eap' do
  version '2016.1.1,145.969.8'
  sha256 'fd30477f74bb9ff4c5e774349ec75053f9b1efb457061864d9a4b6fbf54ea0e0'

  url "https://download.jetbrains.com/webstorm/WebStorm-EAP-#{version.after_comma}.dmg"
  name 'WebStorm'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'
  license :commercial

  app 'WebStorm.app'

  uninstall delete: '/usr/local/bin/wstorm'

  zap delete: [
                "~/.WebStorm#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.webstorm.*.plist',
                "~/Library/Preferences/WebStorm#{version.major_minor}",
                "~/Library/Application Support/WebStorm#{version.major_minor}",
                "~/Library/Caches/WebStorm#{version.major_minor}",
                "~/Library/Logs/WebStorm#{version.major_minor}",
              ]
end
