cask 'phpstorm-eap' do
  version '2017.1,171.3566.28'
  sha256 'ac5cdf8c07fa0e917292ca24357a84ea0aa93ad0a5f89e0ccb463494c10de132'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version.after_comma}.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'

  conflicts_with cask: 'phpstorm'

  app "PhpStorm #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/pstorm'

  zap delete: [
                "~/Library/Application Support/PhpStorm#{version.major_minor}",
                "~/Library/Caches/PhpStorm#{version.major_minor}",
                "~/Library/Logs/PhpStorm#{version.major_minor}",
                "~/Library/Preferences/PhpStorm#{version.major_minor}",
              ]
end
