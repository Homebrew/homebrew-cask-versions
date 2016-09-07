cask 'webkit-nightly' do
  version 'r205494'
  sha256 'a36471fa64074887f52413521c9a931445e3e3bfab43c53d118a8ea294351bae'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
