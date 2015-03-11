cask :v1 => 'dropbox-experimental' do
  version '3.3.37'
  sha256 'faa859d6834bbded01bef1914cc8a0f52df7297716125dabe5bae4f72dc7a0cf'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202869955-Experimental-Build-3-3-37'
  license :gratis

  app 'Dropbox.app'
end
