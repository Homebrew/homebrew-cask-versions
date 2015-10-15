cask :v1 => 'webkit-nightly' do
  version 'r191046'
  sha256 'ae0ec5e2f5445166e180cb4d7d83aee6caebb4f667f77d83e7adc23b325af76c'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
