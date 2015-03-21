cask :v1 => 'dropbox-experimental' do
  version '3.3.39'
  sha256 '213266210fe8913c2a8d1676babf8334e494e4f443d7c9799f106d4fd8e9e447'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202923935-Experimental-Build-3-3-39'
  license :gratis

  app 'Dropbox.app'
end
