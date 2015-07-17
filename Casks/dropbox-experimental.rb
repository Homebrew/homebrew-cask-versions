cask :v1 => 'dropbox-experimental' do
  version '3.8.2'
  sha256 '81104755ac0ae25f192037351cf9ddb94e832d2313f809fc85fd259e4997c320'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/203330319-Release-Candidate-3-8-2'
  license :gratis

  app 'Dropbox.app'
end
