cask :v1 => 'dropbox-experimental' do
  version '3.5.54'
  sha256 '6ec20eda0702791bfc306558f231936f054e6702861a3b5556d258a7999e3341'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202225699-Experimental-Build-3-5-54'
  license :gratis

  app 'Dropbox.app'
end
