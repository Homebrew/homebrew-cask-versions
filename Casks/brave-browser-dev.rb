cask 'brave-browser-dev' do
  version '81.1.9.55,109.55'
  sha256 '692452fc7866510c79086aaa01dfb85a440c85bfbfc0721cc26f6a590a81155b'

  # updates-cdn.bravesoftware.com/sparkle/Brave-Browser/ was verified as official when first introduced to the cask
  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/dev/#{version.after_comma}/Brave-Browser-Dev.dmg"
  appcast 'https://updates.bravesoftware.com/sparkle/Brave-Browser/dev/appcast.xml'
  name 'Brave Dev'
  homepage 'https://brave.com/download-dev/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave Browser Dev.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
