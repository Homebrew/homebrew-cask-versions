cask 'phpstorm-eap' do
  version '2017.1,171.2152.2'
  sha256 'f69ea0cff2dc18c4d94bfb8caa971ad6c4312ce3da26b1d23de2fc0b92b36584'

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
