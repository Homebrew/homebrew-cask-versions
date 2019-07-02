cask 'brave-browser-dev' do
  version '0.68.87'
  sha256 '60fcc6ea112d4b45e55d10e51d57476718a5693fa59315b7e26e060dca923f80'

  url "https://github.com/brave/brave-browser/releases/download/v#{version}/Brave-Browser-Dev.dmg"
  appcast 'https://updates.bravesoftware.com/sparkle/Brave-Browser/dev/appcast.xml'
  name 'Brave Dev'
  homepage 'https://github.com/brave/brave-browser'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave Browser Dev.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
