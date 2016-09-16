cask 'webkit-nightly' do
  version 'r206000'
  sha256 '0736082df64f825eb18226bfe5969edd38b160f6a65f2142106724fb18eba06f'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
