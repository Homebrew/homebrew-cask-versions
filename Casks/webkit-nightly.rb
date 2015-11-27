cask :v1 => 'webkit-nightly' do
  version 'r192774'
  sha256 '4504e549031be31e20732ff02c1251eb6eee62e717628376930b89b7bb6da779'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
