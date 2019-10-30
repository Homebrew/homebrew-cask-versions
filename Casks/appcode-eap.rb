cask 'appcode-eap' do
  version '2019.3,193.4778.23'
  sha256 'd84be323974c0984740e0b62cd702380b57fbc8be774a79abd853fe7b359b969'

  url "https://download.jetbrains.com/objc/AppCode-#{version.after_comma}.dmg"
  name 'AppCode EAP'
  homepage 'https://www.jetbrains.com/objc/nextversion/'

  conflicts_with cask: 'appcode'

  app "AppCode #{version.before_comma} EAP.app"

  zap delete: [
                "~/Library/Preferences/AppCode#{version.before_comma}",
                "~/Library/Application Support/AppCode#{version.before_comma}",
                "~/Library/Caches/AppCode#{version.before_comma}",
                "~/Library/Logs/AppCode#{version.before_comma}",
              ]
end
