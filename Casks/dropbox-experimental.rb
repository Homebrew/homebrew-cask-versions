cask :v1 => 'dropbox-experimental' do
  version '3.7.35'
  sha256 '42a353bf955c020b5591b1d10b3184a8f96bfd7ca8083accb4692a4c24c825c9'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202639569-Experimental-Build-3-7-35'
  license :gratis

  app 'Dropbox.app'
end
