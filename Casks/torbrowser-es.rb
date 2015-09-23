cask :v1 => 'torbrowser-es' do
  version '5.0.3'
  sha256 'f4202221e1f23e479535a86a94825b3503afc1f2d1b55b0329b3c2b45f76fd6a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
