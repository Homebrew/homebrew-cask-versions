cask 'webkit-nightly' do
  version 'r200553'
  sha256 '28043afefd31a01b157a75c1acda0e730554716f7d4b2250709b8f169bf442ba'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
