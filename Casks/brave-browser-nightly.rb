cask 'brave-browser-nightly' do
  version :latest
  sha256 :no_check

  url "https://brave-browser-downloads.s3.brave.com/latest/Brave-Browser-Nightly.dmg"
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
