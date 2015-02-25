cask :v1 => 'dropbox-experimental' do
  version '3.3.32'
  sha256 'efa9263d948870082fa3e334aa825563074aeff9d49bb417a63eee22deb93e4f'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202383225-Experimental-Build-3-3-32'
  license :gratis

  app 'Dropbox.app'
end
