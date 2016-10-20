cask 'webkit-nightly' do
  version 'r207537'
  sha256 'b40a5af7a9cf916d15ac9453a4239ac83154d5f5a26f86ad1e83c0d135e40c1c'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
