cask 'webkit-nightly' do
  version 'r208420'
  sha256 '80926485ab5f0c4731f811a7955338c166c72549817826cf60bb6fd75a36d274'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
