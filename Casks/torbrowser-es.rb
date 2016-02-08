cask 'torbrowser-es' do
  version '5.5.1'
  sha256 'a30ac8ba28407454a715ae5b85714c30a64ee2aa0b3b5f9ead8111fdcb1d6f90'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
