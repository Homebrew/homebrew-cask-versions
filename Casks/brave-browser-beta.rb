cask 'brave-browser-beta' do
  version '0.67.100'
  sha256 'efd181e878059fe52c579e7c944092d721ffc4cf42c7885ae36c17d9eaceb2f4'

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
