cask :v1 => 'webkit-nightly' do
  version 'r190010'
  sha256 '32ec76fe91a5bb4fb184d11b0054e57ff05ea81d740dcbac4f0757d048a407e8'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
