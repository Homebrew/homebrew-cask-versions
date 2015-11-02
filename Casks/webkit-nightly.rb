cask :v1 => 'webkit-nightly' do
  version 'r191860'
  sha256 'f0c8977ea0e1d5ebfd683033c88471fdd8faac1fc06308e3ce40ae184cacb1c4'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
