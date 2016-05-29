cask 'webkit-nightly' do
  version 'r201491'
  sha256 'd715ad2e16b1b004f041a0e8477811f6e9c97b27fb6c95b161a873abfba9d557'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
