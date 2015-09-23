cask :v1 => 'dropbox-experimental' do
  version '3.10.5'
  sha256 '2a384b96100c7a7f1f93829f2b17ba369f1e9e92d9cf8bab948a0dfb8d142e8e'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/205056979-Release-Candidate-3-10-5'
  license :gratis

  app 'Dropbox.app'
end
