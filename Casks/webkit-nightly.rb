cask :v1 => 'webkit-nightly' do
  version 'r192413'
  sha256 '7eeca2ba6b2ec5e8a091fa3afadbe919bd3c9aaae7a93bdd3287acffd8fdb24b'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
