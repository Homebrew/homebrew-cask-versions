cask :v1 => 'webkit-nightly' do
  version 'r192783'
  sha256 '73e3000d1a22a3e1f2b573be3b8e8090fff81f3605e1a01c14b9480849e8fa12'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
