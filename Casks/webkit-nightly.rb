cask 'webkit-nightly' do
  version 'r202918'
  sha256 '77ff0bc708abeaaa66305b4a0361e389702bc4d0a1ed4686cc9db3fc02b70202'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
