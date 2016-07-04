cask 'webkit-nightly' do
  version 'r202794'
  sha256 '00f098f42e76da9b17bd815093800596e7c52aca4f4d2f4969ad3d5b512c80b3'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
