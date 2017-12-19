cask 'torbrowser-alpha' do
  version '7.5a10'
  sha256 'c63c840bf85a3410ec8e3c72c8a2a45ac07532ac881959615a1a50a41373f545'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  appcast 'https://dist.torproject.org/torbrowser/',
          checkpoint: '69bf5867088ea2bcf90d328d252ee0bc9d5a74e2bdb956b2a8be9c830fb36c14'
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
