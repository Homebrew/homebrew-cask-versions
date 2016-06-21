cask 'webkit-nightly' do
  version 'r202246'
  sha256 'bea29914153f5276130cbfb9d81d8ba1c382df6569488c3ab2a9ef478218ce84'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
