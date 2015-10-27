cask :v1 => 'webkit-nightly' do
  version 'r191612'
  sha256 '4e14bd8c464cbfc70e13da714c2dfc5986d5943f15b13727b757371d53d08541'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
