cask 'transmission-nightly' do
  version '14671'
  sha256 '6b0d05ab833e311623179b54b921432db0480079d6877bdeaa7ecc8c43accbb4'

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
