cask 'transmission-nightly' do
  version '3f8660557a'
  sha256 '48a2a5a9027bcf2428fb6a3bd518dfcbbad9c4d117d4c0614c0ece4f5c8702e9'

  url "https://build.transmissionbt.com/job/trunk-mac/lastSuccessfulBuild/artifact/release/Transmission-#{version}.dmg"
  name 'Transmission'
  homepage 'https://www.transmissionbt.com'

  app 'Transmission.app'

  zap delete: [
                '~/Library/Application Support/Transmission',
                '~/Library/Preferences/org.m0k.transmission.plist',
                '~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist',
                '~/Library/Caches/org.m0k.transmission',
                '~/Library/Saved Application State/org.m0k.transmission.savedState',
              ]
end
