cask 'webstorm-eap' do
  version '2016.1'
  sha256 '0f7264f20ea845d6d4702945739d9832f6b349cc2711c1c1ba36e66403a08e5e'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
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

  caveats <<-EOS.undent
    Please manually change to the EAP update channel via:
       Preferences > Appearance & Behavior > System Settings > Updates
    EOS
end
