cask 'transmission-nightly' do
  version '14684,6408'
  sha256 '5b19dec6965b697bdf419e2e2ad3b4513cc34bf50236c363c1f4484b8aea570d'

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
