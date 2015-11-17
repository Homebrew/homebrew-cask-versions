cask :v1 => 'webkit-nightly' do
  version 'r192510'
  sha256 '8182bf1b490ea20084bac3b425881e8c615439e8f231df77192215c359524b3c'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
