cask :v1 => 'transmission-nightly' do
  version '14598'
  sha256 '416c2c2b67036244f68c0da3823799c146c8e8c8984fe7b0273495d8e45ae8e6'

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
