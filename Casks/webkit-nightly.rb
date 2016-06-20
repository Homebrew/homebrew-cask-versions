cask 'webkit-nightly' do
  version 'r202216'
  sha256 'f4cde09ad092f1f6cf19377cd4214d083ad794d55ef81a454ace8cab3cfd7baf'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
