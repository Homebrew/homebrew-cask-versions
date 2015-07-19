cask :v1 => 'dropbox-experimental' do
  version '3.8.3'
  sha256 '7d61f66f9f8005b39d4d804ef993ab6448ad79f054f92ef03749eedc0e898c47'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204512565-Release-Candidate-3-8-3'
  license :gratis

  app 'Dropbox.app'
end
