cask 'webkit-nightly' do
  version 'r202657'
  sha256 '5c8f27588d35fa1d3dd4b6c5ab02161c251428b8159aea449fd769d865c70b83'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
