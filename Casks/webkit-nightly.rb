cask 'webkit-nightly' do
  version 'r201982'
  sha256 '4eb16fdd8a06c11f6a17045e4173862fd283e0a82b3815a6bfac4218c0278277'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
