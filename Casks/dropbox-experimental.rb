cask :v1 => 'dropbox-experimental' do
  version '3.11.42'
  sha256 '8181025da51d83e09536af791729941392c805c872b84b79fdd9702a95cabeeb'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204328256-Experimental-Build-3-11-42'
  license :gratis

  app 'Dropbox.app'
end
