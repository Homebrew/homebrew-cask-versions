cask 'transmission-nightly' do
  version '14655'
  sha256 'ab986c03d23c6f60cfd37529a8d9da0ce9275fbbab6fdeeff7073f5321f46d02'

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
                  '~/Library/Saved Application State/org.m0k.transmission.savedState'
                 ]
end
