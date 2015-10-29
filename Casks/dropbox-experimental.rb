cask :v1 => 'dropbox-experimental' do
  version '3.11.40'
  sha256 '7d38ab6c94db647efe7f4eefc5d6387207db9578d1538df32f301e53802dbb32'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204321196-Experimental-Build-3-11-40'
  license :gratis

  app 'Dropbox.app'
end
