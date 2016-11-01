cask 'webkit-nightly' do
  version 'r208172'
  sha256 '8807016aa002f70770c74901582237f6484b33288f35b5fcf4934f05faf6b2dd'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
