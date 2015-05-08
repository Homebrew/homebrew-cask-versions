cask :v1 => 'dropbox-experimental' do
  version '3.5.65'
  sha256 '6be7612247bdb0c43dd377a5129dce387608e1797902d20e51e525610c5da883'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/203782455-Experimental-Build-3-5-65'
  license :gratis

  app 'Dropbox.app'
end
