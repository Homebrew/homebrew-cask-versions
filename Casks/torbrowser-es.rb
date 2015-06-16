cask :v1 => 'torbrowser-es' do
  version '4.5.2'
  sha256 '65a475b8e4085793e2cc39c92c8cbd77ca9e5cc2ee6af3d4064cdfa2a9427f8c'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
