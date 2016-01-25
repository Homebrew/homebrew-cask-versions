cask 'transmission-nightly' do
  version '14675'
  sha256 '9c108a3760c9fc736a4cedce616b94f53dc3f8ea008aecabf34191acbb245ab1'

  url "https://build.transmissionbt.com/job/trunk-mac/lastSuccessfulBuild/artifact/release/Transmission-#{version}.dmg"
  name 'Transmission'
  homepage 'http://www.transmissionbt.com/'
  license :gpl

  app 'Transmission.app'

  zap delete: [
                '~/Library/Application Support/Transmission',
                '~/Library/Preferences/org.m0k.transmission.plist',
                '~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist',
                '~/Library/Caches/org.m0k.transmission',
                '~/Library/Saved Application State/org.m0k.transmission.savedState',
              ]
end
