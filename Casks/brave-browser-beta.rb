cask 'brave-browser-beta' do
  version '81.1.9.59,109.59'
  sha256 'd85f9e738b045a7d75240ed159109660d713ff8596b770a72276abc83ff0f279'

  # updates-cdn.bravesoftware.com/sparkle/Brave-Browser/ was verified as official when first introduced to the cask
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
