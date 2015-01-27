cask :v1 => 'dropbox-experimental' do
  version '3.1.280'
  sha256 'ac24a197431766f5b27ba98b176d3de9b8f8c4b43a11ced286c4f3bfeecd4f3f'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/201984345-Experimental-Build-3-1-275'
  license :gratis

  app 'Dropbox.app'
end
