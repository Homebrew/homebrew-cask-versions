cask :v1 => 'dropbox-experimental' do
  version '3.5.64'
  sha256 '6c7f481337f32ba86fb02d2cc6b8eabaec8f7a14aba33e5df5d066f64ed8c869'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/203777305-Experimental-Build-3-5-64'
  license :gratis

  app 'Dropbox.app'
end
