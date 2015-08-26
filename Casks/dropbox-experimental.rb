cask :v1 => 'dropbox-experimental' do
  version '3.9.37'
  sha256 'a495c68388e19e9194fe89c1d922acb98e3f23a2b61e8c7c7aeb12cd5fc7d91f'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/205777275-Experimental-Build-3-9-37'
  license :gratis

  app 'Dropbox.app'
end
