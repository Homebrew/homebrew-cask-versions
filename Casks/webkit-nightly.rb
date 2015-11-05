cask :v1 => 'webkit-nightly' do
  version 'r192045'
  sha256 'e43b8d22ae171572d19054a2dfb707f719d8316dc767638d8c755326ddb52e00'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
