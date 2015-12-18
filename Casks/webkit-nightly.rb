cask 'webkit-nightly' do
  version 'r194227'
  sha256 '910e7f09900329e39ba19a9324760f0487d7141f9526d9c168448b665ca4016a'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
