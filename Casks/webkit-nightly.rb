cask :v1 => 'webkit-nightly' do
  version r191756'
  sha256 'ab70e5eb5a44be00455219bbb2d46fd7ab5241e28c533b39e46f319735106faa'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
