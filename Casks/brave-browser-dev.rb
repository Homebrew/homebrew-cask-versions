cask 'brave-browser-dev' do
  version '81.1.10.82,110.82'
  sha256 '10a1216e782c0995e91f2d4c588e9465e7a3eb11df7919166e10fa586dd1eefd'

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
