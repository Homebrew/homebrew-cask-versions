cask :v1 => 'webkit-nightly' do
  version 'r191175'
  sha256 'c5dafaadf00a041b3ee89095558a8e63648a06778eb689af77d341cf84056b2a'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
