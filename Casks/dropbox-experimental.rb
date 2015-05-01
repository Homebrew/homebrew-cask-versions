cask :v1 => 'dropbox-experimental' do
  version '3.5.62'
  sha256 '1a57432a616df9d6424994abf7e05bdcc65c9c1b7d2e47ee7dae0b06fced396d'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/203722225-Experimental-Build-3-5-62'
  license :gratis

  app 'Dropbox.app'
end
