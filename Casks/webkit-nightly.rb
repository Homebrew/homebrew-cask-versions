cask 'webkit-nightly' do
  version 'r203014'
  sha256 '2124383e4cbd00fb7ef41e80e8ef663ce1c05d192f5ceee7e9c7ed4be362414b'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
