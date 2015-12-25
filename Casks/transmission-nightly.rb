cask 'transmission-nightly' do
  version '14632'
  sha256 'b89aee9706ce5071bd8b9e733e66cf986d21ad76604053a1b4ea621e25665df5'

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
