cask :v1 => 'dropbox-experimental' do
  version '3.5.63'
  sha256 'a4923aee9be05f485e3dacdb9dd5897bcba37ca4fc0d66db43a2c5c6e1631cb4'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202286759-Experimental-Build-3-5-63'
  license :gratis

  app 'Dropbox.app'
end
