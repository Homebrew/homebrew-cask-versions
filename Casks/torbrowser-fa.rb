cask 'torbrowser-fa' do
  version '6.0.2'
  sha256 '1e387cb66fb561c781abbce06edd5c2c1f855732467987055fd255b5e20dd77d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
