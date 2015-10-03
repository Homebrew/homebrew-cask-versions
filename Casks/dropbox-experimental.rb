cask :v1 => 'dropbox-experimental' do
  version '3.11.32'
  sha256 'ab7398814a2aaeb0620dd91d8de787e1258d2130d2521d85651be7733331ec25'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204160636-Experimental-Build-3-11-32'
  license :gratis

  app 'Dropbox.app'
end
