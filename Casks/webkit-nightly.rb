cask :v1 => 'webkit-nightly' do
  version 'r190358'
  sha256 '4547a5908d8c62513e6d64961985478f8d221553219328ce418962bed8eca518'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
