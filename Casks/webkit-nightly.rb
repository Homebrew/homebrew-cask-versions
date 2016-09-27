cask 'webkit-nightly' do
  version 'r206374'
  sha256 'c7da6db3912b39ed66f0cedf75a44803c5764f27257c69c49f88b0a019c18261'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
