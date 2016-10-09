cask 'webkit-nightly' do
  version 'r206959'
  sha256 '512fe1825e4737bc9000aee87654981a46d7569ca3cc3b0e1ab097c305c300de'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
