cask :v1 => 'webkit-nightly' do
  version 'r193885'
  sha256 'd8d06534b4842d00f6acb895646abe9a8fede6d20ccf13be3a693248d9de8fb5'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
