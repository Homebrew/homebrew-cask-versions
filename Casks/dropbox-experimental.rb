cask :v1 => 'dropbox-experimental' do
  version '3.12.4'
  sha256 'c1a5a75d4829f47160096e28577170a8bc1bd9893eec7b9c3e271c3b664b49dc'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204468976-Release-Candidate-3-12-4'
  license :gratis

  app 'Dropbox.app'
end
