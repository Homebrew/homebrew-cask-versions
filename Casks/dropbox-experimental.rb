cask :v1 => 'dropbox-experimental' do
  version '3.5.61'
  sha256 'c5d3eb7689c1808c3a6f2f3fa659ab1abd6e19494c8c1f18279a50fbd872c0c4'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202278619-Experimental-Build-3-5-61'
  license :gratis

  app 'Dropbox.app'
end
