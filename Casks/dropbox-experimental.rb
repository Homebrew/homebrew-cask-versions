cask :v1 => 'dropbox-experimental' do
  version '3.11.36'
  sha256 '837f8bb4aafb884a32c6cafce75aab456308a98639b7f01c68fddb8d7d193230'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204277246-Experimental-Build-3-11-36'
  license :gratis

  app 'Dropbox.app'
end
