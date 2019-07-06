cask 'brave-browser-beta' do
  version '0.67.101'
  sha256 '7916d5b52b09b06cde8c6a2cc9a907d5dbcd182f5307ef81559397c19578c38f'

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
