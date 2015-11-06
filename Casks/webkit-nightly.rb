cask :v1 => 'webkit-nightly' do
  version 'r192059'
  sha256 '2adab0e71abbea51d40e6bde57d1f625b07d17028a4a7b4ed7691f092a7f3acc'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
