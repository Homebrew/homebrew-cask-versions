cask 'brave-browser-dev' do
  version '0.68.100'
  sha256 'b5e766a38abc83c9e4b5acdc3db3474d900e98105957da682a59712b0651428f'

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
