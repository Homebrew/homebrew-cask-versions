cask 'webkit-nightly' do
  version 'r204349'
  sha256 '196ebafc5ac3b58ac9ce0a571a2da8d71f42c8db9f57897e322088264e42cf60'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
