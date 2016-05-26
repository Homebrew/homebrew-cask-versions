cask 'webkit-nightly' do
  version 'r201416'
  sha256 'ce4f78bdbc985369b57416757f2cd1e8cc7847c2435b6a79a9e0de02ee036342'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
