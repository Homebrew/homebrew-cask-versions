cask 'webkit-nightly' do
  version 'r201246'
  sha256 'b414f9b260c13811c2e573d50175f16becc48ea9a8d6094e43463045d582192c'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
