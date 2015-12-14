cask :v1 => 'transmission-nightly' do
  version '14620'
  sha256 'ffd844645fd3feaad75249b4518c34faa1188457a3ceaaf83e780f08e39e2271'

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
