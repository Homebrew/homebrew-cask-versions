cask :v1 => 'dropbox-experimental' do
  version '3.7.38'
  sha256 '6b8abf16b2d3d11d452f593e58d4b4937a3b87f03c936615cb637a16ecfeb2fe'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/204135505-Experimental-Build-3-7-38'
  license :gratis

  app 'Dropbox.app'
end
