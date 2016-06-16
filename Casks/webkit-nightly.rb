cask 'webkit-nightly' do
  version 'r202116'
  sha256 'e603da7426ab91de5c310e3e6c3e588e816de8aeb00677295d2410d22b196f24'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
