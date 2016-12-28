cask 'phpstorm-eap' do
  version '2017.1,171.2014.12'
  sha256 'a85f9f21d0fe3160366ab670155823324893b22e43443b3f7a60dd6ec818a6cc'

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
