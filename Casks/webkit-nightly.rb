cask 'webkit-nightly' do
  version 'r202411'
  sha256 '42e04255ee6b278adf131ffbdfb5d0fe0d31e4b221f42748dedea5f5c54763e6'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
