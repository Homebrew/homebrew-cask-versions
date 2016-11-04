cask 'webkit-nightly' do
  version 'r208323'
  sha256 '83bc3b4d77803c5608972f1c1f4d8f481c910aa58e3e2e063bdf1cdc17136ef2'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
