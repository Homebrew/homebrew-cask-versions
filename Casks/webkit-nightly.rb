cask 'webkit-nightly' do
  version 'r205421'
  sha256 '8730f7e4d78c29efa7f7f96be2da36818b8ab84efcd5f530636235d0db1beae1'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
