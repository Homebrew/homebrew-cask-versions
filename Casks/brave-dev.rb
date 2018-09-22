cask 'brave-dev' do
  version '0.55.5'
  sha256 'fb3788fe620f08c367993e1ab1c1d0d2eab58f1f78d7e6bb1243c66bc671881b'

  url "https://github.com/brave/brave-browser/releases/download/v#{version}/Brave-Browser-Dev.dmg"
  appcast 'https://github.com/brave/brave-browser/releases.atom'
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
