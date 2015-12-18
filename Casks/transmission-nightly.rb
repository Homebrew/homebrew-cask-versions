cask 'transmission-nightly' do
  version '14624'
  sha256 '19c0e4cd9d4053c37d6578ac5561530bb1d33352eb151d4fd5660c1070c06002'

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
