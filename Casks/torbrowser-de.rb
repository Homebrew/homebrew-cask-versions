cask :v1 => 'torbrowser-de' do
  version '5.0.4'
  sha256 'c431b0a3c9c4611b48201ad2b416ae5255c54d95cc79edd95f74c34ab6b3abbe'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
