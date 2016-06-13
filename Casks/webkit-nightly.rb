cask 'webkit-nightly' do
  version 'r201985'
  sha256 '68ca0b07c8552b995b0c306096862e6948ce1ba0b182a5bbc60a61b7c84e2a26'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
