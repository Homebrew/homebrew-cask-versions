cask 'webkit-nightly' do
  version 'r205407'
  sha256 '7e92764310f2331d28f9fe082a923bed398f405c5f1be762e272e5fceb47cee3'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
