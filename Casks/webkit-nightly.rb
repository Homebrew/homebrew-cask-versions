cask 'webkit-nightly' do
  version 'r202320'
  sha256 '80c96eb8bdc87e73fc625d0891d20cb54ce0cd1675b443c910c7dfef5c611724'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
