cask 'webkit-nightly' do
  version 'r207669'
  sha256 '6f8faa1f9a65d94578094815e4f66f8722b610d2cc71b763c50dc195e9462907'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
