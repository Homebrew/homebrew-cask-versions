cask 'webkit-nightly' do
  version 'r203455'
  sha256 '20d8d3d3bfdd5f473004f0f4fee9259e46b8ae99d08f5870df16fbd6e2877620'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
