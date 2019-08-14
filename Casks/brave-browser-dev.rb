cask 'brave-browser-dev' do
  version '0.70.65'
  sha256 'be1b55820749a068ca7c5b42428d3126bd10181fe127df7366300cbb880bb741'

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
