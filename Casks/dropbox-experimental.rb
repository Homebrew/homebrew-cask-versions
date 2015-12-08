cask :v1 => 'dropbox-experimental' do
  version '3.13.41'
  sha256 '63352c3a0cfbb732b6d404ae1852c79be21ae8f89031ce66efe6cfdc2c57f357'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204554916-Experimental-Build-3-13-41'
  license :gratis

  app 'Dropbox.app'
end
