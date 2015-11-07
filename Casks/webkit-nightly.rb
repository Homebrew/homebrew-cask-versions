cask :v1 => 'webkit-nightly' do
  version 'r192122'
  sha256 '53225311230121b6dd39bbbc56c3b36a9696756c321249275de2bf4628f488de'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
