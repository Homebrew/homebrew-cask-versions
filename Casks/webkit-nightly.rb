cask :v1 => 'webkit-nightly' do
  version 'r192146'
  sha256 'bfa9ce37a1b4e141f83678acff8d9a84c7ab1be6f87fddd6049ef1b63bf8fc37'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
