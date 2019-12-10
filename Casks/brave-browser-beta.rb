cask 'brave-browser-beta' do
  version '79.1.2.23,102.23'
  sha256 '7c82b56dcdd46e46c5bbcf7c89f6675b252d280f75ea3047eee349ab4b4fa1c9'

  # updates-cdn.bravesoftware.com/sparkle/Brave-Browser was verified as official when first introduced to the cask
  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta/#{version.after_comma}/Brave-Browser-Beta.dmg"
  appcast 'https://updates.bravesoftware.com/sparkle/Brave-Browser/beta/appcast.xml'
  name 'Brave Beta'
  homepage 'https://brave.com/download-beta/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave Browser Beta.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
