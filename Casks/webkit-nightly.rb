cask 'webkit-nightly' do
  version 'r205759'
  sha256 '2b15267eb303f7cb4615b1bacce081473f597e363c72aa80aa853b044d89b092'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
