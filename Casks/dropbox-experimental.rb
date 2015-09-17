cask :v1 => 'dropbox-experimental' do
  version '3.10.4'
  sha256 '6a9826939d4a53874c102d02ab8a18b73790bb5927db0e549ad4147f47b9ab13'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/205833855-Release-Candidate-3-10-4'
  license :gratis

  app 'Dropbox.app'
end
