cask 'brave-browser-dev' do
  version '0.70.68'
  sha256 '9c6a9cabbbe2f609e1199021c9c1c1bb05028a224e6560e2ab931d6318f2475c'

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
