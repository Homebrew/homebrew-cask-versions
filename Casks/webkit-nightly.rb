cask 'webkit-nightly' do
  version 'r204050'
  sha256 'aad5089a144b84b6e00b324e75ea4a14b4384dea34d6ceaad78187f77d0df41a'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
