cask :v1 => 'dropbox-experimental' do
  version '3.1.275'
  sha256 '0d8fd81381bf30191404c5e081d682a9057fa134a67bc606b4f4c0a495a7d110'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/201984345-Experimental-Build-3-1-275'
  license :gratis

  app 'Dropbox.app'
end
