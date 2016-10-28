cask 'webkit-nightly' do
  version 'r207990'
  sha256 '01050e153d6ffb1818e0e5cc1a016b8f05d8d46837056d9ff69b10b6152e9635'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
