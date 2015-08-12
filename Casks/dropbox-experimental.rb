cask :v1 => 'dropbox-experimental' do
  version '3.9.35'
  sha256 'c0422931f25136bd733a3b1aec5c9c3ba154ccea067532d1b3e22c7ec8341f08'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204363679-Experimental-Build-3-9-35'
  license :gratis

  app 'Dropbox.app'
end
