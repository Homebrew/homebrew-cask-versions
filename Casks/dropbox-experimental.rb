cask :v1 => 'dropbox-experimental' do
  version '3.3.38'
  sha256 '1910f2453a1ce922b086a3fea1d79cbee618d1e6e838e8a6210ff216c0536d6a'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202085359-Experimental-Build-3-3-38'
  license :gratis

  app 'Dropbox.app'
end
