cask :v1 => 'dropbox-experimental' do
  version '3.7.34'
  sha256 '2b086ade480d8d34962f3cc2736c089791d2aa4ac35f5204e1839a43478dcdaf'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202623089-Experimental-Build-3-7-34'
  license :gratis

  app 'Dropbox.app'
end
