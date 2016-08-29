cask 'webkit-nightly' do
  version 'r205107'
  sha256 '048594d229eadce8a4ed3dd66fe129670eee3ea36efd56771e4d9e4551368bd4'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
