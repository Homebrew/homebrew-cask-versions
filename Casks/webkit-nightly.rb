cask 'webkit-nightly' do
  version 'r207899'
  sha256 '332bf944e5356752b6fbde859cbce7e33ba68254279670378e26273dab1b6499'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
