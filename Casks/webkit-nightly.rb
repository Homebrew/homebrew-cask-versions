cask 'webkit-nightly' do
  version 'r203213'
  sha256 '6310af0ceceaf7a90692edcc372c42f69a1c9f0f0e09c7bc9f0f559a9694d8d3'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
