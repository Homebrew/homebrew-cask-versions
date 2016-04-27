cask 'appcode-eap' do
  version '2016.1.2-RC'
  sha256 '9708c42e2ebfecb7e96e80e964f5e1929b280d94fb622aa3be77ccdb4d5b50eb'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  conflicts_with cask: 'appcode'

  app 'AppCode.app'

  zap delete: [
                "~/.Appcode#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.appcode.*.plist',
                "~/Library/Preferences/AppCode#{version.major_minor}",
                "~/Library/Application Support/AppCode#{version.major_minor}",
                "~/Library/Caches/AppCode#{version.major_minor}",
                "~/Library/Logs/AppCode#{version.major_minor}",
              ]
end
