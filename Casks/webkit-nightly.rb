cask 'webkit-nightly' do
  version 'r207392'
  sha256 'c2eb20e9bb3e6f84ede7c9b19e7f9964ca990df49cde1ab39db1e06c6ced3d8a'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
