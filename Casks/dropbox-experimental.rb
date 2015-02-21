cask :v1 => 'dropbox-experimental' do
  version '3.3.31'
  sha256 '6d055e2303be9aaeb39a4801655cfd65d507e69db6e37e61555285985ddd999a'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/201878399-Experimental-Build-3-3-31'
  license :gratis

  app 'Dropbox.app'
end
