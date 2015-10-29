cask :v1 => 'webkit-nightly' do
  version 'r191696'
  sha256 '5097c383e32b64f1874c36d53243090007b6eafbca149d40add679ee44bba88e'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
