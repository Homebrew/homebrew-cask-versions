cask 'brave-browser-beta' do
  version '79.1.4.80,104.80'
  sha256 'a1a1e2f190bd2d7b39cec755b63a7d3423b89fcd4cf65fe5c861ee0312a440ee'

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
