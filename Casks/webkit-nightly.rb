cask :v1 => 'webkit-nightly' do
  version 'r190412'
  sha256 '2f8f40451b5af350070e3bc337ffad89f2de0c6d56090aba5af57aff794f47f5'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
