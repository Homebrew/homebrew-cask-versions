cask 'appcode-eap' do
  version '2020.2,202.6250.25'
  sha256 '65455772f6701ff9d170b0a3a94c117c58734ee2f74a1809e7d0db3865f1f8d0'

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
