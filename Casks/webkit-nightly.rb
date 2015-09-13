cask :v1 => 'webkit-nightly' do
  version 'r189569'
  sha256 '3851b45ab9b7715a4585282c4703b1ea322c1af5ed262d32a3f1117e31324b54'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
