cask 'webkit-nightly' do
  version 'r203954'
  sha256 'c389323f074be129264e73478041b4b8c0f62c59935b37f994e2f35105c3ec1d'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
