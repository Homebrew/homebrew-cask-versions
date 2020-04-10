cask 'tor-browser-alpha' do
  version '9.5a11'
  sha256 'ac94e1485cc54fec44a7520ef9c834db8e237a9f12a908900d45db2e6788edf8'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  appcast 'https://www.torproject.org/download/alpha/'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/'

  auto_updates true
  conflicts_with cask: 'tor-browser'

  app 'Tor Browser.app'

  zap trash: [
               '~/Library/Application Support/TorBrowser-Data',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*',
               '~/Library/Preferences/org.mozilla.tor browser.plist',
               '~/Library/Preferences/org.torproject.torbrowser.plist',
               '~/Library/SavedApplicationState/org.torproject.torbrowser.savedState',
             ]
end
