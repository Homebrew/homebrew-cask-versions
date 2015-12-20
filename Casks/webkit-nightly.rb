cask 'webkit-nightly' do
  version 'r194284'
  sha256 'c06cae8dd3d9ecacf89a440a19ac5fda5587695c5c6f5e58e41eea40ba685827'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
