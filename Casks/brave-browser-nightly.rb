cask 'brave-browser-nightly' do
  version '1.3.5'
  sha256 'eb4fb95c01614cf9e0d90658d716a03e554a913bcab1b5f1f20dce2898e460a7'

  # updates.bravesoftware.com was verified as official when first introduced to the cask
  url do
    require 'open-uri'
    appcast = 'https://updates.bravesoftware.com/sparkle/Brave-Browser/nightly/appcast.xml'
    URI(appcast).open.read.scan(%r{enclosure url="([^"]+.dmg)"}).flatten.last
  end
  name 'Brave Nightly'
  homepage 'https://brave.com/download-nightly/'

  depends_on macos: '>= :mavericks'

  app 'Brave Browser Nightly.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
