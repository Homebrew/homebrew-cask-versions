cask :v1 => 'dropbox-experimental' do
  version '3.7.41'
  sha256 'f9696b9d0f99ecface71db0557e3b4b1dd1f926e63c4ebb61185eab10f6b5402'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/203135929-Experimental-build-3-7-41'
  license :gratis

  app 'Dropbox.app'
end
