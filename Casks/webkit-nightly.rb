cask 'webkit-nightly' do
  version 'r205657'
  sha256 '7584cc1027fc4c15ffa1493cdf2ed0b170dd195c69c54b675b88df6ea8527d86'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
