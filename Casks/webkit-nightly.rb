cask 'webkit-nightly' do
  version 'r201640'
  sha256 '489d78f915198cde1a05b6849b1eef5d8455b019f22b544fc73c73152fb97f0e'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
