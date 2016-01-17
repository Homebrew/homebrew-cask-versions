cask 'dropbox-experimental' do
  version '3.13.52'
  sha256 '8041458d8c46be7ec3aa4d44d3e7bd05c86c01570a50dd5e68e7c64331243449'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204448313-Experimental-Build-3-13-52'
  license :gratis

  app 'Dropbox.app'

  uninstall :login_item => 'Dropbox'

  zap :delete => '~/.dropbox'
end
