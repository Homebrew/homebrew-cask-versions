cask 'appcode-eap' do
  version '2020.2,202.5958.23'
  sha256 '018d9673dcf90bf55de3edb113606a3e25540ca352f5aeefc58838a09d960ef6'

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
