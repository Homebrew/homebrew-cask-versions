cask 'webkit-nightly' do
  version 'r207387'
  sha256 'f6b70b7803d2581aa29c43c2984d823d3ee4fcbc7d94c3775b67f8a20fa8030c'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
