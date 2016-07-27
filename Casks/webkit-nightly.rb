cask 'webkit-nightly' do
  version 'r203731'
  sha256 'e507602ef1c301cb289d19a19abd207dc0230a353e121f1ca644498a93d94f6c'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
