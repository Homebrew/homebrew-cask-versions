cask 'webkit-nightly' do
  version 'r213013'
  sha256 'a20b11be5dd42ca7b84f8b296f5953731fdcc110fee7efaeb22c2e5c1f8c8cae'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
