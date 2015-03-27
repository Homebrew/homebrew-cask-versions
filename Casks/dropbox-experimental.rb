cask :v1 => 'dropbox-experimental' do
  version '3.4.0'
  sha256 '5bd7d82f6c6157751aace696c792bb2681bc0fc3f0711b8d5431bb128f2c4068'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202944275-Release-Candidate-3-4-0'
  license :gratis

  app 'Dropbox.app'
end
