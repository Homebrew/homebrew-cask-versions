cask 'brave-browser-beta' do
  version '0.68.121'
  sha256 '21a427e394384e2d23d1de69c6177de210c94c92e2b40c60250cca1348d08baa'

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
