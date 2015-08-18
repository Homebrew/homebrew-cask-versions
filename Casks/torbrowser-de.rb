cask :v1 => 'torbrowser-de' do
  version '5.0.1'
  sha256 '6277dbf61ee3f38f357a1d09c51e86f54fc934f742cf74b3c7599b8e40a3d903'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
