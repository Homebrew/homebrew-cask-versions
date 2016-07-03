cask 'webkit-nightly' do
  version 'r202782'
  sha256 'f27069a2cf893b4c3f1570e6bb13c0db34d98b937b8060c082e25967f61fb96e'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
