cask :v1 => 'dropbox-experimental' do
  version '3.3.35'
  sha256 '4d72e91bb525a8359cbe47ad8b39a8bb6632df95515c836b2891fd21d01b9b98'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202522965-Experimental-Build-3-3-34'
  license :gratis

  app 'Dropbox.app'
end
