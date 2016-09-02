cask 'webkit-nightly' do
  version 'r205316'
  sha256 'e6270e572e534a81b0a21b0d523067d16e22b28e240d9b4804b4a72caaa3766c'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
