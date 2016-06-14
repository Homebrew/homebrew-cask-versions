cask 'webkit-nightly' do
  version 'r202019'
  sha256 '572e646d1e621984da997067793be1ffab885a8c93df4cfce2c5aa71977cc0df'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
