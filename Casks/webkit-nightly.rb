cask :v1 => 'webkit-nightly' do
  version 'r190846'
  sha256 '0e1d687c272ad084a28261ee200a17a63a1f33b3fe4c190c9542033af709577b'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
