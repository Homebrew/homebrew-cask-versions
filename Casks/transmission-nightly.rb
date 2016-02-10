cask 'transmission-nightly' do
  version '14679,6403'
  sha256 '9cf31f8c71c81e86d6e71c377e650acfb38242ebe7098178607caeece3ad60c8'

  url "https://build.transmissionbt.com/job/trunk-mac/#{version.after_comma}/artifact/release/Transmission-#{version.before_comma}.dmg"
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
