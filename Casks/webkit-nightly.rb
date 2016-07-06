cask 'webkit-nightly' do
  version 'r202844'
  sha256 'be3d4a7841e5a1c590ad1fac37838d02c4f2cd219713cdec9795e9dc6d5041fd'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
