cask :v1 => 'dropbox-experimental' do
  version '3.2.3'
  sha256 'c590850ab6bf8a0c22be49e81e2d6fb6ec012aa4d93f3b7deda53ba44bcb55a7'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/201669379-Release-Candidate-3-2-3'
  license :gratis

  app 'Dropbox.app'
end
