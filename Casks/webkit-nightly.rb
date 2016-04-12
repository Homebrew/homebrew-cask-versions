cask 'webkit-nightly' do
  version 'r199300'
  sha256 '57cab82d2a912441125dc46d9234d476db3dedf128d7ae55b78e524789d87375'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
