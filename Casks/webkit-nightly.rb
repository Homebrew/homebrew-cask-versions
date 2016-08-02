cask 'webkit-nightly' do
  version 'r203973'
  sha256 '66b7d076f9f2fdcecdb710aac247d3a5b45ab1713c2347d58ac33d9783f1ebec'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
