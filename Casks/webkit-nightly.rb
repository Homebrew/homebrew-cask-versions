cask :v1 => 'webkit-nightly' do
  version 'r191547'
  sha256 '4e4fc4458885c133417bf350ef3569a438035e50bc7b43543b0d07e449db6817'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
