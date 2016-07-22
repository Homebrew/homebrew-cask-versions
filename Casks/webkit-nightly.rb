cask 'webkit-nightly' do
  version 'r203535'
  sha256 '798ad2f9cb20e335e7d5fcbd2155ed1baea7fa08f163ca54a69616091fbeb0d3'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
