cask :v1 => 'webkit-nightly' do
  version 'r190992'
  sha256 '03baac4bd5ac6db9a4c9ed6826e2706d0f2f2a070cddebaf188e95696c74e9c9'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
