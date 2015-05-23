cask :v1 => 'dropbox-experimental' do
  version '3.6.2'
  sha256 'ced13722187a7ee9dd015c5e2411658b327185231768763d2486cbf117c78b70'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/203827275-Release-Candidate-3-6-2'
  license :gratis

  app 'Dropbox.app'
end
