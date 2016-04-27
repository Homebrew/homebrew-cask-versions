cask 'torbrowser-es' do
  version '5.5.5'
  sha256 '44d3d69095859af327a843c389816b923191b3a3e52d1664f1ffeb5dd5c53bff'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
