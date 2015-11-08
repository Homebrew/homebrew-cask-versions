cask :v1 => 'webkit-nightly' do
  version 'r192131'
  sha256 '811996a7b1e7963a11417355376fa8d55e153475199594fd9390e3a0a20ce960'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
