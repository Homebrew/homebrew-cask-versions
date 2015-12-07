cask :v1 => 'webkit-nightly' do
  version 'r193584'
  sha256 'e724ab1e5f26e3c6386459a97a2443bb53590fecc897d4d619ccec3c727c5bcf'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
