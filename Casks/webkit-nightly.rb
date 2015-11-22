cask :v1 => 'webkit-nightly' do
  version 'r192726'
  sha256 'ba8390d7b3b95c41242a1910ba9c64be695549562cb82dcfbfca380cc2194389'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
