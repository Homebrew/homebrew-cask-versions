cask :v1 => 'dropbox-experimental' do
  version '3.7.31'
  sha256 '747aae7c13e27b6c2daeefa7f1ad37888269ed577b8d3d89255f9456f90c3214'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202374509-Experimental-Build-3-7-31'
  license :gratis

  app 'Dropbox.app'
end
