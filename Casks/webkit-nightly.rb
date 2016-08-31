cask 'webkit-nightly' do
  version 'r205181'
  sha256 '82a945b3855d786eba77ecf754d0df43b52f8bf88ed4cb4f19fee96639d91f37'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
