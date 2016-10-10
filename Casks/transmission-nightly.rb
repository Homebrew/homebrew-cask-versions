cask 'transmission-nightly' do
  version '14736'
  sha256 'e56ad5ff03d9437b8c099dafea616b3e1b4e072a7f5dd06df9abc09576347ee1'

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
