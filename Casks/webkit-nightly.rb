cask :v1 => 'webkit-nightly' do
  version 'r192790'
  sha256 'c535b21b68836eda065b12ef8873020b64e189c4b9b50ae56719b70eff493b9d'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
