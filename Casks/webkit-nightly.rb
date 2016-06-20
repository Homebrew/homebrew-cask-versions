cask 'webkit-nightly' do
  version 'r202224'
  sha256 'ea879c925a8d351e24815ad03739e4968a469a91a2d208d29073711f77a30061'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
