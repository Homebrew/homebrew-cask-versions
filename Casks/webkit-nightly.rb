cask 'webkit-nightly' do
  version 'r207640'
  sha256 '1bf4202550fbf69e2ff315ac60a8902dd588d247724ed5c199018f3d202469dd'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
