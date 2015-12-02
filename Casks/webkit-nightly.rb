cask :v1 => 'webkit-nightly' do
  version 'r192882'
  sha256 'beda0e14371a6e49b91d43a92b3986dc8f87e222a2aedf9f08ac5f580ffa639a'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
