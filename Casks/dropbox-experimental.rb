cask :v1 => 'dropbox-experimental' do
  version '3.3.42'
  sha256 '3d395a9080b18c1923abdf6afceba455579473ef2c323991b9689c3161ef0212'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202939445-Experimental-Build-3-3-42'
  license :gratis

  app 'Dropbox.app'
end
