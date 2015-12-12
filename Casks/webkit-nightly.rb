cask :v1 => 'webkit-nightly' do
  version 'r193998'
  sha256 '24b64bf5fd6fbac814602b33469c4077cc8bc8360b6c298af137e17447b7e00d'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
