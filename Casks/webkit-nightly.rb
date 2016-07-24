cask 'webkit-nightly' do
  version 'r203653'
  sha256 '429f3a65481b5b0111ce2204afdef97b02fb09a4ad518a989e42dac7b2f9d77c'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
