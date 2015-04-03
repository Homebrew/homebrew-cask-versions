cask :v1 => 'dropbox-experimental' do
  version '3.5.50'
  sha256 'f53b17e0b1dd601a84517121a29b57e626d53350629f0006e2088e9d44603e3c'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202197889-Experimental-Build-3-5-50'
  license :gratis

  app 'Dropbox.app'
end
