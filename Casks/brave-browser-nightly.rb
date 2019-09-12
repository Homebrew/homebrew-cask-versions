cask 'brave-browser-nightly' do
  version '0.72.11'
  sha256 'e3f305d035642bc0b8a0e505e7bd2c5590884effed8c127fb5eed7995e5fef9d'

  url "https://github.com/brave/brave-browser/releases/download/v#{version}/Brave-Browser-Nightly.dmg"
  appcast 'https://updates.bravesoftware.com/sparkle/Brave-Browser/nightly/appcast.xml'
  name 'Brave Nightly'
  homepage 'https://github.com/brave/brave-browser'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave Browser Nightly.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
