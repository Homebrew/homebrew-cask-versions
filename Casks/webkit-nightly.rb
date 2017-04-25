cask 'webkit-nightly' do
  version 'r215681'
  sha256 'd82105c3f7a441fc9658657b292abfe7818ff55a161a27e6e29d66cc997b9ba4'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
