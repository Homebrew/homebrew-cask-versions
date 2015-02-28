cask :v1 => 'dropbox-experimental' do
  version '3.3.34'
  sha256 '5bf86b86e08461640ee20ed7e7bfcf59fef86a9d99f706a8063e0eb7b375ab8a'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202522965-Experimental-Build-3-3-34'
  license :gratis

  app 'Dropbox.app'
end
