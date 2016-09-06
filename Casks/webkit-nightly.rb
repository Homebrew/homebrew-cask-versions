cask 'webkit-nightly' do
  version 'r205458'
  sha256 'c533839f449d527ad7a6436240e1dbbff535f030d40e0c7ab09cb8008b8f7d9b'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
