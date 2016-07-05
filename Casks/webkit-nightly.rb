cask 'webkit-nightly' do
  version 'r202811'
  sha256 '035edb5caa313f7cf0d469f62011dc6d864d35da9b3d2c1ddcdf51363d8c98ac'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
