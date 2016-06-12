cask 'webkit-nightly' do
  version 'r201975'
  sha256 '2ae6437308827cc79b3bafe419bd8f3d7a4c0e79d6e3a21c955c98e0210aaab0'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
