cask :v1 => 'dropbox-experimental' do
  version '3.5.56'
  sha256 'e82904f1585b1b74334a101d0fcb5a1dbe5f5aa0cb240d4867a0ad9bf5fae646'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202237799-Experimental-Build-3-5-56'
  license :gratis

  app 'Dropbox.app'
end
