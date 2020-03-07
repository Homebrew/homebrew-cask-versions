cask 'appcode-eap' do
  version '2020.1,201.6073.14'
  sha256 'e905b1a965c5b64bb280d85503adc063dcf35a25ffb26946e6ccdc1a3e090b3c'

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
