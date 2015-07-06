cask :v1 => 'torbrowser-es' do
  version '4.5.3'
  sha256 '7c03a90fd61d6889ec50a9fc8d4f2dd14c2355306470eb8d09c5ed3aaeac57de'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
