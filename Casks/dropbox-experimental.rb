cask :v1 => 'dropbox-experimental' do
  version '3.11.31'
  sha256 'd0e0129bfe6c20d84fea09bad9becba06f65f08f66bcf3376c8357b924124b35'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/203204043-Experimental-Build-3-11-31'
  license :gratis

  app 'Dropbox.app'
end
