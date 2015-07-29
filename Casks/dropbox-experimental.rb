cask :v1 => 'dropbox-experimental' do
  version '3.9.31'
  sha256 '301c29148b4051e12dfa99a528168c2f4b25022d4a6ba48fc7df3c3ba70016b9'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/203362409-Experimental-Build-3-9-31'
  license :gratis

  app 'Dropbox.app'
end
