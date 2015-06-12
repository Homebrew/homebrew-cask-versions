cask :v1 => 'dropbox-experimental' do
  version '3.7.36'
  sha256 '9336d308d6a80b820ce1f18322a34498148c7d8dd39aafbf05f852399fa1639c'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202660409-Experimental-Build-3-7-36'
  license :gratis

  app 'Dropbox.app'
end
