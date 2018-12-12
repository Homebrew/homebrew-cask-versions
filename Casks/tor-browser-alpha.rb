cask 'tor-browser-alpha' do
  version '8.5a6'
  sha256 'add264bdd720001c834ae2936dae607b9c047e10422dd3a2e622e84347c66c2b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  appcast 'https://dist.torproject.org/torbrowser/'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'

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
