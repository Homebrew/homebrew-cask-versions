cask 'webkit-nightly' do
  version 'r203826'
  sha256 '7c6187754cf9cd27b915c97bd9e1efd9f1fa4a838e0a64e419a947ffdc624488'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
