cask 'webkit-nightly' do
  version 'r203785'
  sha256 '4f7d5b078306d37dde0fbca665d0a2183fa1c1a0a0e26cad50eae41b22047a86'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
