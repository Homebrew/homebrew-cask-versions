cask :v1 => 'dropbox-experimental' do
  version '3.5.60'
  sha256 '3e098edad11184eb72e627a51af1c0354de1f3b34c0b36f6993fed05b6d1be6d'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/203477455-Experimental-Build-3-5-60'
  license :gratis

  app 'Dropbox.app'
end
