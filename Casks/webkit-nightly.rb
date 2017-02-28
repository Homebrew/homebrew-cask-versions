cask 'webkit-nightly' do
  version 'r213122'
  sha256 '26a758998d3df466144edb0a482f3a5bc952d930afc11b7ef7e62b3e15eccb69'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
