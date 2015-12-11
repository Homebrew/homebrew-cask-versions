cask :v1 => 'dropbox-experimental' do
  version '3.13.43'
  sha256 'f50154b7ae4977472776a00a2fb5c2154c210dd048b33a3d68a6b19c09f733c1'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/203866863-Experimental-Build-3-13-42'
  license :gratis

  app 'Dropbox.app'
end
