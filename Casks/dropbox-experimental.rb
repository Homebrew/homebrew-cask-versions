cask :v1 => 'dropbox-experimental' do
  version '3.1.274'
  sha256 '67451843c9f0c70992200c28caeb80d98fefef5b4a4238e3964242223feabac4'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropbox.com/'
  license :gratis

  app 'Dropbox.app'
end
