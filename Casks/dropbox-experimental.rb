cask :v1 => 'dropbox-experimental' do
  version '3.11.34'
  sha256 'b3d1e4dff40908615491dd59745684c6a75b28e44f721cc80a200672d0a19784'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204236986-Experimental-Build-3-11-34'
  license :gratis

  app 'Dropbox.app'
end
