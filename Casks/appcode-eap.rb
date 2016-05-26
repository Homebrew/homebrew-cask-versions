cask 'appcode-eap' do
  version '2016.1.3-RC'
  sha256 '73b20e180646aeb7dfbc2a5038493bce81b35140b4a9910dec7e5ad127191de1'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  conflicts_with cask: 'appcode'

  app 'AppCode 2016.1.3 EAP.app'

  zap delete: [
                "~/Library/Preferences/AppCode#{version.major_minor}",
                "~/Library/Application Support/AppCode#{version.major_minor}",
                "~/Library/Caches/AppCode#{version.major_minor}",
                "~/Library/Logs/AppCode#{version.major_minor}",
              ]
end
