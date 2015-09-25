cask :v1 => 'webkit-nightly' do
  version 'r190237'
  sha256 '034caf9772cd8d07e8f6733ed0cfdfa66ae46505c70e3298d97071f6e9f67b90'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
