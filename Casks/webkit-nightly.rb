cask :v1 => 'webkit-nightly' do
  version 'r191549'
  sha256 'fbe1dda91546d115c6ba02beff78d80340e7e12329e4cc0e16f118a9bae2d3f1'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
