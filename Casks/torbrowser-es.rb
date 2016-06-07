cask 'torbrowser-es' do
  version '6.0.1'
  sha256 '4ebb4300372a3fdfcb6b0ce0dc44c244e20dd4addbb7c15886e6c638cf6c44d2'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
