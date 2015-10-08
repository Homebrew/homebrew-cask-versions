cask :v1 => 'webkit-nightly' do
  version 'r190705'
  sha256 '294d03213a7febeca4a8e647d67069090893f56402843660412b61564ccb6782'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
