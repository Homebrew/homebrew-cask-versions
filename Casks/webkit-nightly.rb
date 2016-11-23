cask 'webkit-nightly' do
  version 'r208420'
  sha256 'a7341ff5af993b15ac9f1cab0a91c77a74ac98ba83877439738dc90a2deefebd'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
