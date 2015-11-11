cask :v1 => 'dropbox-experimental' do
  version '3.11.45'
  sha256 '133bb5bbe27e22d9eeb00ee086c03395870aeb5dd9f5e916671e93f417840bc8'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204360366-Experimental-Build-3-11-45'
  license :gratis

  app 'Dropbox.app'
end
