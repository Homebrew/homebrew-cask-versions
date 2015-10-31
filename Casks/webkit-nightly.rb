cask :v1 => 'webkit-nightly' do
  version 'r191812'
  sha256 'a10d71d4758e7d9b92bb90b14d06a0c02d60d651429adfc503e6ca267477363c'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
