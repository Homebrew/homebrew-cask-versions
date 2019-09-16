cask 'brave-browser-nightly' do
  version :latest
  sha256 :no_check

  # brave-browser-downloads.s3.brave.com was verified as official when first introduced to the cask
  url 'https://brave-browser-downloads.s3.brave.com/latest/Brave-Browser-Nightly.dmg'
  name 'Brave Nightly'
  homepage 'https://github.com/brave/brave-browser'

  depends_on macos: '>= :mavericks'

  app 'Brave Browser Nightly.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
