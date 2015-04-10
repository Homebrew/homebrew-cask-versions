cask :v1 => 'dropbox-experimental' do
  version '3.5.53'
  sha256 '7a883a185ffc819b9815bb649d955f376c6388727a3924b00ba8be0a45740b3d'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202197889-Experimental-Build-3-5-50'
  license :gratis

  app 'Dropbox.app'
end
