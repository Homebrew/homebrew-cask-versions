cask 'webkit-nightly' do
  version 'r205093'
  sha256 'ea0591b6744822b357703d118b87b353318cfae29b20d3dd7ac808d06e4fceae'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
