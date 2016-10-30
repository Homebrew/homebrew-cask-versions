cask 'webkit-nightly' do
  version 'r208115'
  sha256 '35e2235baa062e2f7d88eeff9b3247e3256826b88716b5267588628651720d24'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
