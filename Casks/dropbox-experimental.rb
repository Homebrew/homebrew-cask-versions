cask :v1 => 'dropbox-experimental' do
  version '3.9.36'
  sha256 '4e10cf405e7588b56fca4dcf3f78cb1d43799cb5eefd58b6a1cbc5ee933bdbd4'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204961815-Experimental-Build-3-9-36'
  license :gratis

  app 'Dropbox.app'
end
