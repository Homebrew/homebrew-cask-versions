cask :v1 => 'webkit-nightly' do
  version 'r191658'
  sha256 '41e44a3129afda6b9b6f215e6fbaa6e0aa3d2443a653626c8fb4f704bb550ad5'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
