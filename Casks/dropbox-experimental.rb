cask :v1 => 'dropbox-experimental' do
  version '3.9.33'
  sha256 '9ba7902007357bd723a6e9d384905fb14438e6b66405a229bd6003c87efffd31'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204572675-Experimental-Build-3-9-33'
  license :gratis

  app 'Dropbox.app'
end
