cask 'torbrowser-es' do
  version '6.0.3'
  sha256 'f34eeedef1fe4d8b797b2b0fc50c25017cc0e36c1b8d31d70fcb39665c549793'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
