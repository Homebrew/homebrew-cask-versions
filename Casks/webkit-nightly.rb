cask 'webkit-nightly' do
  version 'r201495'
  sha256 'eb0dd0bd03783c0b335b53ad2602e1bebac5ea090abb58fac896e9568e9b9e5a'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
