cask :v1 => 'dropbox-experimental' do
  version '3.6.3'
  sha256 'ec09ae97f77a24931c1db984f83a80d7a97e442f5e5d6a7f673558a23429c7c2'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202364049-Release-Candidate-3-6-3'
  license :gratis

  app 'Dropbox.app'
end
