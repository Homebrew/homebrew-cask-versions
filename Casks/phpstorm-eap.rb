cask 'phpstorm-eap' do
  version '2017.1,171.3019.12'
  sha256 'd2cdfe6e6bd9b6cb3315c5fe75dcf44d9672a6fdfc7e6e2f0ff3f80828ac322c'

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
