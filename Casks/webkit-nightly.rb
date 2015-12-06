cask :v1 => 'webkit-nightly' do
  version 'r193534'
  sha256 '635f88b32e5f5e4de7d486af3acf72af926dc562ec4ca0c9c286d5cb6bb98427'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
