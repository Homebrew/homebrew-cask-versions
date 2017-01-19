cask 'phpstorm-eap' do
  version '2017.1,171.2455.9'
  sha256 '5b2fc971bc3dd1fe853780129d3599ee3a07466d4c29cbce30971bcae049ae4f'

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
