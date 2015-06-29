cask :v1 => 'dropbox-experimental' do
  version '3.7.40'
  sha256 '3e7dde74b74be0c33e663e00118efbf3cf724b96facc1982a1255a699a72a0f4'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/203127179-Experimental-build-3-7-40'
  license :gratis

  app 'Dropbox.app'
end
