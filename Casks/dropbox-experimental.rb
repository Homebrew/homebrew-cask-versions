cask :v1 => 'dropbox-experimental' do
  version '3.8.1'
  sha256 '83ae417ef12a32c43e5e33a833df6d5aff7f273a3b4b2864edbaa307b7e04c12'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/203312749-Release-Candidate-3-8-1'
  license :gratis

  app 'Dropbox.app'
end
