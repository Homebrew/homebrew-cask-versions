cask :v1 => 'dropbox-experimental' do
  version '3.7.33'
  sha256 'd22cf6d493f32d47f2e9612307736341218ef3f01cfccb0108d41fb60ad83e6f'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202524299-Experimental-Build-3-7-33'
  license :gratis

  app 'Dropbox.app'
end
