cask :v1 => 'dropbox-experimental' do
  version '3.9.30'
  sha256 '528888a8c65e0c0e9470f8ce23d7cb95b06abb37174befd55d7432129e1954f2'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/203352329-Experimental-Build-3-9-30'
  license :gratis

  app 'Dropbox.app'
end
