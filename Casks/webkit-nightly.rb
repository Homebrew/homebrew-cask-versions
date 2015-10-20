cask :v1 => 'webkit-nightly' do
  version 'r191351'
  sha256 '36938103d24b4d18d3959322f744a83454966c603ab3304e1866f162a1b505bc'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
