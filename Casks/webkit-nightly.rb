cask 'webkit-nightly' do
  version 'r203109'
  sha256 '9b58775d20210c6ab0b0e6962c628ef9b9b880d4eb25bbc2477974958188a054'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
