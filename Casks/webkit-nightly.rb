cask 'webkit-nightly' do
  version 'r205268'
  sha256 'd11a7f4f177e4fecedce02d3e0df60ebb5c90da431100fe706195e8483af39d3'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
