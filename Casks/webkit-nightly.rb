cask 'webkit-nightly' do
  version 'r202616'
  sha256 '204fed6fb564ed8fa20073c4b4439d12ebfb76847af3824df05d47800f34b889'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
