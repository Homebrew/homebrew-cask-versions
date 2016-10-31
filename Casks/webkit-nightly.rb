cask 'webkit-nightly' do
  version 'r208124'
  sha256 '06908a8241c19751105a53907f3e64ca06a352e99779c6c3d248d3422ed332fc'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
