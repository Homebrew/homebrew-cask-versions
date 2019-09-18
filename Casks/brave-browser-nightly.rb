cask 'brave-browser-nightly' do
  version :latest
  sha256 :no_check

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
