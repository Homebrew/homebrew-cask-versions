cask 'webkit-nightly' do
  version 'r201701'
  sha256 '8a0fca221d8d0d7c1a944377feb0dd77dd3e33223c140e3bb18e0e8864d75bcd'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
