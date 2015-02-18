cask :v1 => 'dropbox-experimental' do
  version '3.3.28'
  sha256 'e259e79e7fc1b4a7dececd64db1a95d6676c54227ccb0f32fd701d0d91d6d173'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/201693149-Experimental-Build-3-3-28'
  license :gratis

  app 'Dropbox.app'
end
