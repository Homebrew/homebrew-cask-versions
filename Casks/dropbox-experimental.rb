cask :v1 => 'dropbox-experimental' do
  version '3.9.34'
  sha256 'dd74befb88a8ff9396009cb2836aae31139a6bbbd1b7ab4d1a1dda92c1d39e1c'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204245599-Experimental-Build-3-9-34'
  license :gratis

  app 'Dropbox.app'
end
