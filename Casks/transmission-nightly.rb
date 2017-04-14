cask 'transmission-nightly' do
  version 'fdfbe225da'
  sha256 '33a6604b23c6707be6790a43ae0fd2ad31b3bd34f0e01fef550c87e5c3f403aa'

  url "https://build.transmissionbt.com/job/trunk-mac/lastSuccessfulBuild/artifact/release/Transmission-#{version}.dmg"
  name 'Transmission'
  homepage 'https://transmissionbt.com/'

  app 'Transmission.app'

  zap delete: [
                '~/Library/Application Support/Transmission',
                '~/Library/Preferences/org.m0k.transmission.plist',
                '~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist',
                '~/Library/Caches/org.m0k.transmission',
                '~/Library/Saved Application State/org.m0k.transmission.savedState',
              ]
end
