cask 'brave-browser-beta' do
  version '0.61.36'
  sha256 '0bad3e2f01ad39f5c2de4bf496fc5efeea7e6a94315dc403a3d83a488a711329'

  url "https://github.com/brave/brave-browser/releases/download/v#{version}/Brave-Browser-Beta.dmg"
  appcast 'https://updates.bravesoftware.com/sparkle/Brave-Browser/beta/appcast.xml'
  name 'Brave Beta'
  homepage 'https://github.com/brave/brave-browser'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave Browser Beta.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
