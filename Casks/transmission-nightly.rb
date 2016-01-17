cask 'transmission-nightly' do
  version '14673'
  sha256 '6ea4626b56ce8dce0ebe102951bb27ef489addf8be3215d41d74fba1a0762efa'

  url "https://build.transmissionbt.com/job/trunk-mac/lastSuccessfulBuild/artifact/release/Transmission-#{version}.dmg"
  name 'Transmission'
  homepage 'http://www.transmissionbt.com/'
  license :gpl

  app 'Transmission.app'

  zap :delete => [
                   '~/Library/Application Support/Transmission',
                   '~/Library/Preferences/org.m0k.transmission.plist',
                   '~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist',
                   '~/Library/Caches/org.m0k.transmission',
                   '~/Library/Saved Application State/org.m0k.transmission.savedState',
                 ]
end
