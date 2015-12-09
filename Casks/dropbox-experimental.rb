cask :v1 => 'dropbox-experimental' do
  version '3.13.42'
  sha256 'f9401a603f5d9ba44e18730db7f2a99d807101a34e3fc7966048db155061ccdd'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/203866863-Experimental-Build-3-13-42'
  license :gratis

  app 'Dropbox.app'
end
