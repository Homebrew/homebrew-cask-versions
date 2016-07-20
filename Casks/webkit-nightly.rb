cask 'webkit-nightly' do
  version 'r203436'
  sha256 '54c9b6a28385316eab59e59acb8af24f25db18c6c2537014cf9f4ab3ceac344c'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
