cask 'appcode-eap' do
  version '162.646.13'
  sha256 '7f7d429eff152d43b2fc36865bf09674a13747a16ad47826400c6449a2e0f12e'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode EAP'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  conflicts_with cask: 'appcode'

  app 'AppCode 2016.2 EAP.app'

  zap delete: [
                "~/.Appcode#{version.major_minor}",
                "~/Library/Preferences/AppCode#{version.major_minor}",
                "~/Library/Application Support/AppCode#{version.major_minor}",
                "~/Library/Caches/AppCode#{version.major_minor}",
                "~/Library/Logs/AppCode#{version.major_minor}",
              ]
end
