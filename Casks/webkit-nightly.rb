cask 'webkit-nightly' do
  version 'r202365'
  sha256 '59148ce56270ac4b0c3d39e16ce2fcca59414acfbce90547d2aa08f309a947df'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
