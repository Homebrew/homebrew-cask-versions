cask 'webkit-nightly' do
  version 'r212809'
  sha256 '771c0a92b927c4974efcd4bd3095fe90e3949c52bf4f570c8cb9931da67ec0cf'

  url "https://builds-nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
