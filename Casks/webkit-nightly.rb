cask 'webkit-nightly' do
  version 'r207464'
  sha256 'c3123f4e19a19a8253f17f06d8a02186bcd341718fb742d4747ee7b348e86d6c'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
