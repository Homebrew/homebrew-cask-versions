cask :v1 => 'webkit-nightly' do
  version 'r193949'
  sha256 '30556b3813dcfb37a58e810b865bb4a992054dbc38c4e14c88f910d19ce354f7'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
