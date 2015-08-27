cask :v1 => 'transmission-nightly' do
  version '14560'
  sha256 'a9220266b9411108034eb5403e00e01c28069e673f3425f4d2e4ee79e5f18101'

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
                 ]
end
