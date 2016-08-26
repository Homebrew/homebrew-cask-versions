cask 'webkit-nightly' do
  version 'r204977'
  sha256 'fc0274038fb4bccb88b2b6e60e2f11b8d02cbdd7ab377eff24a0a6ab274f3ba9'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
