cask :v1 => 'webkit-nightly' do
  version 'r194118'
  sha256 '779fa19b6e703f0c39bdfc26d80f1da742a039394e623861bab5a91a38c99932'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
