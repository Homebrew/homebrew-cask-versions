cask 'torbrowser-alpha' do
  version '7.5a9'
  sha256 '6d96ee0821b6c721d8c2df5a9d61d18860441cce97c9a9322c054390bb25e835'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  appcast 'https://dist.torproject.org/torbrowser/',
          checkpoint: '7d4e69c1937b00fc4299a790ec355dbf93f1718ed63f96fd057bc41fab9ececd'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc", key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  conflicts_with cask: 'torbrowser'

  app 'TorBrowser.app'

  zap trash: [
               '~/Library/Application Support/TorBrowser-Data',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*',
               '~/Library/Preferences/org.mozilla.tor browser.plist',
               '~/Library/Preferences/org.torproject.torbrowser.plist',
             ]
end
