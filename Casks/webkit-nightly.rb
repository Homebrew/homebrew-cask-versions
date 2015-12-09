cask :v1 => 'webkit-nightly' do
  version 'r193804'
  sha256 'a4edcb5b16262e57e099bc1942eb124bfb52e53576085e515a79356f912fccfe'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
