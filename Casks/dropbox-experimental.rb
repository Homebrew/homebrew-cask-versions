cask :v1 => 'dropbox-experimental' do
  version '3.6.1'
  sha256 'afa93235896bed6287f7c3b3afda24825c0c4297db15eb79282ec6c27265ec88'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202349879-Release-Candidate-3-6-1'
  license :gratis

  app 'Dropbox.app'
end
