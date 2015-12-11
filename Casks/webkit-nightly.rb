cask :v1 => 'webkit-nightly' do
  version 'r193939'
  sha256 'b2c3e5bf5b4a1b02a6668681733d3ab5f52949a31929ed8cbbb0a0fb941e671d'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
