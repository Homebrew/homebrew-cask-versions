cask :v1 => 'webkit-nightly' do
  version 'r192785'
  sha256 'dfd56292af722926511496d634e7465b805767d63fffdaa141dd63b412291268'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
