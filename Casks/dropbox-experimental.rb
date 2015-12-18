cask 'dropbox-experimental' do
  version '3.13.45'
  sha256 'd247b687b7ccb6e47527487f0e2a5edac21c87174f9deed8b5360ecf5e010850'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204648876-Experimental-Build-3-13-45'
  license :gratis

  app 'Dropbox.app'
  
  uninstall :login_item => 'Dropbox'
  
  zap :delete => '~/.dropbox'
end
