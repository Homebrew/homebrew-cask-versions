cask 'webkit-nightly' do
  version 'r206725'
  sha256 'ad25c9e426650eac027e4738c12a7379bf674a7508897322bc04e93b25184ea3'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
