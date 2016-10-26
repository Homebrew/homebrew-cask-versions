cask 'webkit-nightly' do
  version 'r207823'
  sha256 '7ef36c6c0ecfa43961fe73e9f5fb3deff3ee104ff176a30cb17157f57034c3f1'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
