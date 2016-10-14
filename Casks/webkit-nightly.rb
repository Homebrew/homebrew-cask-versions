cask 'webkit-nightly' do
  version 'r207302'
  sha256 'cc7f0e024238f917e72fa6a9411f5c848278ec60569cc7fb455116a758bebf23'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
