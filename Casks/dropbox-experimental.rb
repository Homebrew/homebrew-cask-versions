cask :v1 => 'dropbox-experimental' do
  version '3.2.2'
  sha256 '07ce05cb4ef5bdf91a12631127a714c300f872d5be636fd28a17d07474ee9a79'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/201984345-Experimental-Build-3-1-275'
  license :gratis

  app 'Dropbox.app'
end
