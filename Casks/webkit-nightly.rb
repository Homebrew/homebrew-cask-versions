cask :v1 => 'webkit-nightly' do
  version 'r191501'
  sha256 'a065d9adeea5eae2bcfb6db00861e2c13f802ceec82e3de64d21146e3654d0f2'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
